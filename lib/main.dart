import 'package:flutter/material.dart';
import 'package:morning_box/src/home_feature/home_screen.dart';
import 'package:morning_box/src/onboarding_feature/views/splash_screen.dart';
import 'package:morning_box/src/shared/colors.dart';
import 'package:morning_box/src/shared/route_generator.dart';
import 'package:morning_box/src/shared/styles.dart';
import 'package:morning_box/src/subscription_feature/views/menu_option_screen.dart';
import 'package:morning_box/src/subscription_feature/views/payment_option_screen.dart';
import 'package:morning_box/src/subscription_feature/views/subscription_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Morning',
        // initialRoute: init,
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedLabelStyle: body1Regular,
            selectedLabelStyle: heading1Bold,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.kcSecondaryOrange,
            unselectedItemColor: const Color(0xffbebebe),
          ),
          primarySwatch: Colors.blue,
        ),
      home: PaymentMenu()
    );
    
  }
}
