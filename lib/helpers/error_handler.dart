import 'dart:math';
import 'dart:ui';

import 'package:flutter_starter_template/api/connectivity_exception.dart';
import 'package:flutter_starter_template/helpers/toast_service.dart';

class ErrorHandler {
  static handleConnectivityError(Object e, {VoidCallback? onRetry}){
    if(e is NoConnectionException){
      ToastService.show("Check your internet connection");
    }
  }
}