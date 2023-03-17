import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/payment_option_screen.dart';

class MapOptionScreen extends StatefulWidget {
  const MapOptionScreen({super.key});

  @override
  State<MapOptionScreen> createState() => _MapOptionScreenState();
}

class _MapOptionScreenState extends State<MapOptionScreen> {
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
              Navigator.pushNamed(context, '/paymentSubscription');
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
              'Delivery Point',
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
                        decoration: BoxDecoration(
                          color: AppColors.kcBaseWhite.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: AppColors.kcDarkestWhite.withOpacity(0.5)),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img/ic_mapsFake.png',
                              width: 320,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            'Perumahan Sukolilo Park Regency A-5, Keputih, Sukolilo, Surabaya, Jawa Timur, 6311',
                            style: body2Regular.copyWith(color: Colors.grey),
                          ),
                        ),
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