import 'package:flutter_starter_template/api/api.dart';

import 'auth.dart';

class EmailAuthRepository extends AuthRepository{
  late EmailAuthClient _client;

  EmailAuthRepository(){
    _client = EmailAuthClient();
  }

  /// example login business method
  Future<CommonResponse> login({required String username, required String password}) async {
    try {
      var data = EmailLoginDto(username: username, password: password);
      var response = await _client.login(data: data);
      await tokenManager.save(accessToken: 'example token'); // todo save token from response
      return response;
    } catch (e) {
      rethrow;
    }
  }
}