import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box_hackfest/src/aimenu_feature/views/about_survey_screen.dart';
import 'package:morning_box_hackfest/src/aimenu_feature/views/result_survey_screen.dart';
import 'package:morning_box_hackfest/src/aimenu_feature/views/survey_screen.dart';
import 'package:morning_box_hackfest/src/home_feature/views/home_screen.dart';
import 'package:morning_box_hackfest/src/shared/router.dart';
import 'package:morning_box_hackfest/src/strike_point_feature/views/home_strike_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/subscription_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'assets/img/bg_onboarding.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover
            ),
          ),
          Center(
            child: Image.asset(
              'assets/img/ic_onboarding.png',
              width: MediaQuery.of(context).size.width / 1.3,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 24),
              padding: const EdgeInsets.only(bottom: 24),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Team Asdos Sisop 2023',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}