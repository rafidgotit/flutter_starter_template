import 'package:flutter/material.dart';
import 'package:flutter_starter_template/config/colors.dart';
import 'package:flutter_starter_template/config/routes.dart';
import 'package:flutter_starter_template/providers/authentication/auth_controller.dart';
import 'package:get/get.dart';

///[App] is the entry point of this application
class App extends StatelessWidget {
  const App({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyAppView();
  }
}

class MyAppView extends StatelessWidget {
  const MyAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      onInit: () async {
        Get.put<AuthController>(AuthController(), permanent: true,);
      },
      initialRoute: MyRoutes.initial,
      getPages: MyRoutes.routes,
      title: 'Sugary',
      theme: ThemeData(
        primaryColor: MyColors.primary,
      ),
      navigatorObservers: const [], // todo: add observer for analytics
    );
  }
}
