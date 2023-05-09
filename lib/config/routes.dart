import 'package:get/route_manager.dart';
import 'package:flutter_starter_template/ui/ui.dart';

class MyRoutes {
  static const Duration _duration = Duration(milliseconds: 200);

  static const String initial = '/';
  static const String login = '/login';
  static const String home = '/home';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SplashScreen(), popGesture: true, transition: Transition.fadeIn, transitionDuration: _duration),
    GetPage(name: login, page: () => const LoginPage(), popGesture: true, transition: Transition.fadeIn, transitionDuration: _duration),
    GetPage(name: home, page: () => const Home(), popGesture: true, transition: Transition.rightToLeft, transitionDuration: _duration),
  ];
}
