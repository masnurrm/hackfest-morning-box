import 'package:flutter/material.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';

class AboutSurveyScreen extends StatelessWidget {
  const AboutSurveyScreen({super.key});

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
              Navigator.pushNamed(context, '/subscription');
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.kcBaseBlack
            ),
          ),
        ),
        title: Container(
          padding: const EdgeInsets.only(top: 32),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Start Survey',
              style: TextStyle(
                color: AppColors.kcBaseBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 80),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'We\'ll ask you a quick question to find out your appetite.',
                          style: heading5Regular
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Please answer the questions properly to get the breakfast package that suits your taste.',
                          style: heading5SemiBold
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.only(right: 40, bottom: 20),
                  height: 44,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.kcBaseBlack
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(AppColors.kcSecondaryOrange),
                    ),
                    child: Text(
                      'Start',
                      style: heading5Bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}