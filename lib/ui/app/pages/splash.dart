///[SplashScreen] will to be shown as loading screen when the app starts
import 'package:flutter/material.dart';
import 'package:flutter_starter_template/config/colors.dart';
import 'package:flutter_starter_template/providers/authentication/auth_controller.dart';
import 'package:flutter_starter_template/ui/app/widgets/double_click_back.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _finishAnimation;
  final Curve curve = Curves.easeInOut;
  final Duration duration = const Duration(milliseconds: 750);

  bool done = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: duration,
      reverseDuration: duration,
      lowerBound: 0.95,
      upperBound: 1,
    );
    _finishAnimation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..forward(from: 1);
    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      var authController = Get.find<AuthController>();
      authController.checkAuth(
        before: () => _finishAnimation.reverse(),
        delay: const Duration(milliseconds: 300),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _finishAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DoubleClickBack(
      child: Scaffold(
        backgroundColor: MyColors.background,
        body: LayoutBuilder(builder: (context, constrains) {
          return Center(
            child: AnimatedBuilder(
              animation: _finishAnimation,
              child: AnimatedBuilder(
                  animation: _controller,
                  child: Icon(
                    Icons.logo_dev,
                    size: constrains.maxWidth * 0.4,
                    color: MyColors.secondary,
                  ),
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _controller.value,
                      child: child,
                    );
                  }),
              builder: (context, child) {
                return Transform.scale(
                  scale: _finishAnimation.value,
                  child: child,
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
