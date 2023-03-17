import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box_hackfest/src/home_feature/views/home_screen.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kcBaseWhite,
      appBar: AppBar(
        foregroundColor: AppColors.kcBaseWhite,
        backgroundColor: AppColors.kcBaseWhite,
        elevation: 0,
        leading: Container(
          padding: const EdgeInsets.only(top: 32),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Icon(
              Icons.arrow_back,
              color: AppColors.kcBaseBlack
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 40),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/img/ic_success.png',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Pembayaran Sukses!',
                        style: heading3Bold.copyWith(color: AppColors.kcSecondaryOrange),
                      )
                    ],
                  )
                )
              ),
            ]
          ),
        ),
      )
    );
  }
}