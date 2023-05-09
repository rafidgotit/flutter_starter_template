import 'dart:ui';

import 'package:flutter_starter_template/api/api_exceptions.dart';
import 'package:flutter_starter_template/config/routes.dart';
import 'package:flutter_starter_template/helpers/token_manager.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  String? token;


  Future checkAuth({VoidCallback? before, Duration? delay}) async {
    try {
      var tokenManager = TokenManager();
      token = await tokenManager.getToken();

      if(token==null) throw ApiException();

      _delayBeforeRedirection(before, delay, () {
        Get.offNamed(MyRoutes.home);
      });
    } on ApiException catch (_) {
      _delayBeforeRedirection(before, delay, () {
        Get.offNamed(MyRoutes.login);
      });
    } on ConnectivityException catch (e){
      ErrorHandler.handleConnectivityError(e, onRetry: () => checkAuth(before: before, delay: delay));
    }
  }

  _delayBeforeRedirection(VoidCallback? before, Duration? delay, VoidCallback afterDelay){
    if(before!=null) before();
    Future.delayed(delay??Duration.zero, (){
      afterDelay();
    });
  }

  Future logout() async {
    await TokenManager().clear();
    Get.offAllNamed(MyRoutes.login);
  }
}
