import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/router.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/payment_option_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/subscription_screen.dart';

class ResultSurveyScreen extends StatefulWidget {
  const ResultSurveyScreen({super.key});

  @override
  State<ResultSurveyScreen> createState() => _ResultSurveyScreenState();
}

class _ResultSurveyScreenState extends State<ResultSurveyScreen> {
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
            child: Icon(
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
              'Renew Subscription',
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
        child: Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 40),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                        decoration: BoxDecoration(
                          color: AppColors.kcBaseWhite,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: AppColors.kcSecondaryOrange.withOpacity(0.8),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/img/ic_menuRenewal.png',
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Diet Package Menu',
                                style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                              ),
                            ),
                            const SizedBox(
                              height: 12
                            ),
                            Text(
                              '340 calories per meal, making your diet program a success',
                              style: body2Regular.copyWith(color: AppColors.kcBaseBlack),
                            ),
                            const SizedBox(
                              height: 12
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Rp140.000',
                                style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                              ),
                            ),
                            const SizedBox(
                              height: 12
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      
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