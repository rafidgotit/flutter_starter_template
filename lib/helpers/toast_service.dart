import 'package:fluttertoast/fluttertoast.dart';

abstract class ToastService{
  static error( String? msg ){
    if(msg!=null) Fluttertoast.showToast(msg: msg);
  }
  static success(String msg){
    Fluttertoast.showToast(msg: msg);
  }
  static show(String msg){
    Fluttertoast.showToast(msg: msg);
  }
  static showNotAvailable(){
    Fluttertoast.showToast(msg: 'Will be available soon');
  }
}