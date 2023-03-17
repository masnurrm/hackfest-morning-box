import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box/src/auth_feature/views/login_screen.dart';
import 'package:morning_box/src/home_feature/home_screen.dart';
import 'package:morning_box/src/shared/local_storage.dart';
import 'package:morning_box/src/shared/router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
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