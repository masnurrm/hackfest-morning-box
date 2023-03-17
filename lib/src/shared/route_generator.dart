import 'package:flutter/material.dart';
import 'package:morning_box_hackfest/src/aimenu_feature/views/about_survey_screen.dart';
import 'package:morning_box_hackfest/src/aimenu_feature/views/result_survey_screen.dart';
import 'package:morning_box_hackfest/src/aimenu_feature/views/survey_screen.dart';
import 'package:morning_box_hackfest/src/auth_feature/views/login_screen.dart';
import 'package:morning_box_hackfest/src/home_feature/views/home_screen.dart';
import 'package:morning_box_hackfest/src/onboarding_feature/views/splash_screen.dart';
import 'package:morning_box_hackfest/src/shared/router.dart';
import 'package:morning_box_hackfest/src/strike_point_feature/views/home_strike_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/maps_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/menu_option_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/payment_option_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/result_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/subscription_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/voucher_option_screen.dart';

import '../auth_feature/views/register_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Onboard and Auth
      case init:
        final args = settings.arguments; 
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case login:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case register:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const RegisterScreen());

      // Home Main Dashboard
      case home:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const HomeScreen());   

      // Local Notification Route
      case homeFromNotif:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      // Subscription Renewal
      case subscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const SubscriptionScreen());   
      case renewSubscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const MenuOptionScreen());
      case paymentSubscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const PaymentMenuScreen());
      case voucherSubscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const VoucherOptionScreen());
      case locationSubscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const MapOptionScreen());
      case successSubscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const ResultScreen());
      case failedSubscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const ResultScreen());
      case surveySubscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const AboutSurveyScreen());
      case formSurveySubscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const SurveyScreen());
      case generatedSurveySubscription:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const ResultSurveyScreen());
      
      // Reward System Strike Point
      case reward:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const HomeStrikeScreen());
      case redeemReward:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const ResultScreen());
      case levelReward:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const ResultScreen());
      case shopReward:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const ResultScreen());

      // Profile
      case profile:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const ResultScreen());
      case contactProfile:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const ResultScreen());
      case addProfile:
        final args = settings.arguments;
        return MaterialPageRoute(builder: (context) => const ResultScreen());

      default:
        return _errorPage();
    }
  }

  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text("ERROR"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Page Not Found"),
        ),
      ),
    );
  }
}
