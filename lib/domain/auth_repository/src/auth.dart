import 'package:flutter_starter_template/helpers/token_manager.dart';

class AuthRepository{
  late TokenManager tokenManager;

  AuthRepository(){
    tokenManager = TokenManager();
  }
}