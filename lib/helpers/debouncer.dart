import 'dart:async';

class Debouncer{
  final Duration duration;

  Timer? _timer;

  void dispose(){
    _timer?.cancel();
  }

  void run(Function method){
    _timer?.cancel();
    _timer = Timer(duration, method as void Function());
  }

  Debouncer({this.duration=const Duration(milliseconds: 500)});
}