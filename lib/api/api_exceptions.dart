export 'connectivity_exception.dart';
export 'package:flutter_starter_template/helpers/error_handler.dart';

class ApiException implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  ApiException([this.message, this.prefix, this.url]);
}

class BadRequestException extends ApiException {
  BadRequestException([String? message, String? url]) : super(message, 'Bad Request', url);
}

class FetchDataException extends ApiException {
  FetchDataException([String? message, String? url]) : super(message, 'Unable to process', url);
}

class ApiNotRespondingException extends ApiException {
  ApiNotRespondingException([String? message, String? url]) : super(message, 'Api not responded in time', url);
}

class UnAuthorizedException extends ApiException {
  UnAuthorizedException([String? message, String? url]) : super(message, 'UnAuthorized request', url);
}
class NotFoundException extends ApiException {
  NotFoundException([String? message, String? url]) : super(message, 'Not found', url);
}