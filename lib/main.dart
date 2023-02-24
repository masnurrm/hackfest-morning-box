import 'package:flutter/material.dart';
import 'package:hackfest_morning_box/src/onboarding_feature/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Morning Box',
      theme: ThemeData(
        // Sek urung diisi
        // primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
