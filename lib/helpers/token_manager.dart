import 'package:shared_preferences/shared_preferences.dart';

class TokenManager{
  static const String _tokenKey = 'token';

  Future<void> save({required String accessToken}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, accessToken);
  }

  Future<String?> getToken() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  Future<void> clear() async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
  }
}