import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_starter_template/providers/authentication/auth_controller.dart';
import 'package:get/instance_manager.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter_starter_template/api/api.dart';

class DioClient {
  Dio? _dio;

  Dio? get dio => _dio;

  DioClient({bool log = false}) {
    var authController = _getAuthController();
    var token = authController?.token;

    var option = BaseOptions(baseUrl: Urls.base, connectTimeout: 30 * 1000, receiveTimeout: 30 * 1000, validateStatus: (status) => status! <= 506, headers: {
      'content-type': 'application/json; charset=utf-8',
      if (token != null) 'Authorization': 'Bearer $token',
    });
    _dio = Dio(option);

    if (kDebugMode) log = true;
    if (log) {
      _dio?.interceptors.add(PrettyDioLogger(requestHeader: false, requestBody: true, responseBody: false));
    }
  }

  //GET
  Future<dynamic> get(String api, {Map<String, dynamic>? query}) async {
    var uri = Uri.https(Urls.base, api, _convertQuery(query));
    try {
      var response = await _dio?.get(uri.toString());
      return _processResponse(response!, uri.toString());
    } on DioError catch (e) {
      _handleDioError(e, uri);
    } finally {}
  }

  //POST
  Future<dynamic> post(String api, dynamic payloadObj, {Map<String, dynamic>? query}) async {
    var uri = Uri.https(Urls.base, api, _convertQuery(query));
    var payload = json.encode(payloadObj);
    try {
      var response = await _dio?.post(uri.toString(), data: payload);
      return _processResponse(response!, uri.toString());
    } on DioError catch (e) {
      _handleDioError(e, uri);
    } finally {}
  }

  //PUT
  Future<dynamic> put(String api, dynamic payloadObj, {Map<String, dynamic>? query}) async {
    var uri = Uri.https(Urls.base, api, _convertQuery(query));
    var payload = json.encode(payloadObj);
    try {
      var response = await _dio?.put(uri.toString(), data: payload);
      return _processResponse(response!, uri.toString());
    } on DioError catch (e) {
      _handleDioError(e, uri);
    } finally {}
  }

  //DELETE
  Future<dynamic> delete(String api, {Map<String, dynamic>? query}) async {
    var uri = Uri.https(Urls.base, api, _convertQuery(query));
    try {
      var response = (await _dio?.delete(uri.toString()))!;
      return _processResponse(response, uri.toString());
    } on DioError catch (e) {
      _handleDioError(e, uri);
    } finally {}
  }

  //POST FILE
  Future<dynamic> postFile(String api, File file, {String? path}) async {
    _initFormDataClient();
    var uri = Uri.https(Urls.base, api);
    var formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(file.path, filename: file.path.split('/').last),
      if (path != null) 'path': path,
    });
    try {
      var response = await _dio?.post(uri.toString(), data: formData);
      return _processResponse(response!, uri.toString());
    }  on DioError catch (e) {
      _handleDioError(e, uri);
    } finally {
      _initJsonDataClient();
    }
  }

  dynamic _processResponse(Response<dynamic> response, String url) {
    switch (response.statusCode) {
      case 200:
      case 201:
        return response.data;
      case 400:
        CommonResponse? result;
        if (response.data != null) result = CommonResponse.fromJson(response.data);
        throw BadRequestException(result?.message, url);
      case 401:
      case 403:
        throw UnAuthorizedException(response.data, url);
      case 404:
        CommonResponse? result;
        if (response.data != null) result = CommonResponse.fromJson(response.data);
        throw NotFoundException(result?.message, url);
      case 500:
      default:
        throw FetchDataException('Error occurred with code : ${response.statusCode}', url);
    }
  }

  AuthController? _getAuthController() {
    var isRegistered = Get.isRegistered<AuthController>();
    return isRegistered ? Get.find<AuthController>() : null;
  }

  Map<String, String> _convertQuery(Map<String, dynamic>? query) {
    Map<String, String> map = {
      'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
    };
    if (query == null) return map;
    query.forEach((key, value) {
      map[key] = value.toString();
    });
    return map;
  }

  _initFormDataClient() {
    _dio?.options.headers['content-type'] = 'multipart/form-data';
  }

  _initJsonDataClient() {
    _dio?.options.headers['content-type'] = 'application/json; charset=utf-8';
  }

  _handleDioError(DioError e, uri){
    if (DioErrorType.receiveTimeout == e.type || DioErrorType.connectTimeout == e.type) {
      throw NoConnectionException();
    } else if (DioErrorType.other == e.type) {
      if (e.message.contains('SocketException')) {
        throw NoConnectionException();
      }
    } else {
      throw ServerDownException();
    }
  }
}
