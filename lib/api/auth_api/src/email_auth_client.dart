import 'package:flutter_starter_template/api/api.dart';
import 'package:flutter_starter_template/api/auth_api/src/models/email_auth_dto/email_auth_dto.dart';

class EmailAuthClient extends BaseClient{
  /// example login api
  Future<CommonResponse> login({required EmailLoginDto data}) async {
    try {
      var response = await client.post(Urls.login, data.toJson());
      var authResponse = CommonResponse.fromJson(response);
      return authResponse;
    } catch (e) {
      rethrow;
    }
  }
}