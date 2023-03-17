import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:morning_box_hackfest/src/auth_feature/models/login.dart';
import 'package:morning_box_hackfest/src/auth_feature/models/login_responses.dart';
import 'package:morning_box_hackfest/src/auth_feature/services/login_service.dart';
import 'package:morning_box_hackfest/src/provider/global.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:morning_box_hackfest/src/provider/global.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  LoginApi _loginApi = LoginApi();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        // ...
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/img/ic_onboarding.png',
                        width: MediaQuery.of(context).size.width / 1.3,
                      ),
                    ),
                    // ...
                    Column(
                      children: [
                        // ...
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              // Email TextFormField
                              TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  // Add other decoration properties as needed
                                ),
                                validator: _validateEmail,
                              ),
                              // Password TextFormField
                              TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  focusColor: AppColors.kcSecondaryOrange,
                                  hoverColor: AppColors.kcSecondaryOrange,
                                  fillColor: AppColors.kcSecondaryOrange
                                  // Add other decoration properties as needed
                                ),
                                validator: _validatePassword,
                              ),
                            ],
                          ),
                        ),
                        // ...
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: AppColors.kcSecondaryOrange,
                            backgroundColor: AppColors.kcSecondaryOrange
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await login();
                            }
                          }, child: Text(
                            'Login'
                          ),
                          // ...
                        ),
                        // ...
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> login() async {
    final url = Uri.parse("http://34.124.165.248/signin");

    try {
      final response = await http.post(
        url, 
        body: json.encode({
          "email": _emailController.text.trim(),
          "password": _passwordController.text.trim()
        })
      );


      var data = json.decode(response.body);
      if(response.statusCode != 500) {
        await Provider.of<Global>(context, listen: false).signin(data["data"]);
        Navigator.pushNamed(context, '/home');

      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data["error"])),
        );
      }
      // }
    } catch(error) {
      print(error);
    }
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return '*Required Field';
    }
    // Add more email validation if needed
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return '*Required Field';
    }
    // Add more password validation if needed
    return null;
  }
}