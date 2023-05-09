import 'package:flutter/material.dart';
import 'package:flutter_starter_template/helpers/toast_service.dart';

class DoubleClickBack extends StatefulWidget {
  const DoubleClickBack({Key? key, required this.child, this.onSingleClick}) : super(key: key);
  final Widget child;
  final Future<bool> Function()? onSingleClick;

  @override
  _DoubleClickBackState createState() => _DoubleClickBackState();
}

class _DoubleClickBackState extends State<DoubleClickBack> {
  DateTime? lastPressed;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool pop = true;
        if(widget.onSingleClick!=null) pop = await widget.onSingleClick!();

        if(pop){
          DateTime now = DateTime.now();
          if (lastPressed == null || now.difference(lastPressed!) > const Duration(seconds: 2)) {
            lastPressed = now;
            ToastService.show('Press back again to exit');
            return false;
          }
          return true;
        }
        else {
          return false;
        }
      },
      child: widget.child,
    );
  }
}
