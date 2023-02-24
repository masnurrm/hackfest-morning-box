import 'package:flutter/material.dart';
import 'package:hackfest_morning_box/src/auth_feature/screens/login_screen.dart';
import 'package:hackfest_morning_box/src/auth_feature/screens/register_screen.dart';
import 'package:hackfest_morning_box/src/onboarding_feature/screens/splash_screen.dart';
import 'package:hackfest_morning_box/src/shared/router.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case init:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case login:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case register:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => RegisterScreen());

      default:
        return _errorPage();
    }
  }

  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("ERROR"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Page Not Found"),
        ),
      ),
    );
  }
}
