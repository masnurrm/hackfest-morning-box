import 'package:flutter/material.dart';
import 'package:morning_box/src/auth_feature/views/login_screen.dart';
import 'package:morning_box/src/auth_feature/views/register_screen.dart';
import 'package:morning_box/src/shared/router.dart';
import 'package:morning_box/src/onboarding_feature/views/splash_screen.dart';

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
