import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/maps_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/menu_option_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/result_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/voucher_option_screen.dart';

class PaymentMenuScreen extends StatefulWidget {
  const PaymentMenuScreen({super.key});

  @override
  State<PaymentMenuScreen> createState() => _PaymentMenuState();
}

class _PaymentMenuState extends State<PaymentMenuScreen> {
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
              Navigator.pushNamed(context, '/renewSubscription');
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
              'Payment',
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
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img/ic_menu2.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width / 5,
                              height: MediaQuery.of(context).size.width / 5,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Flexible(
                              fit: FlexFit.loose,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Diet Package',
                                      style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Rp140.000',
                                      style: body2Regular.copyWith(color: AppColors.kcSecondaryOrange),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Current delivery point',
                              style: heading5SemiBold
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/locationSubscription');
                                },
                                child: Text(
                                  'Change Point >',
                                  style: body3Regular.copyWith(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
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
                      SizedBox(
                        height: 24,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Select Payment Method',
                          style: heading5SemiBold
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/img/ic_ovo.png'
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rp150.000',
                                    style: body1Bold,
                                  ),
                                  Text(
                                    'Saldo mencukupi',
                                    style: body1Regular.copyWith(color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Icon(
                            Icons.radio_button_checked,
                            color: AppColors.kcSecondaryOrange
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Image.asset(
                        'assets/img/ic_qrGopay.jpg'
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(color: AppColors.kcDarkestWhite.withOpacity(0.5)),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/voucherSubscription');
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/img/ic_discount.png',
                                          height: 32,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          'Choose Voucher',
                                          style: body1SemiBold,
                                        )
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: AppColors.kcBaseBlack
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total',
                                      style: body1Bold,
                                    ),
                                    Text(
                                      'Rp140.000',
                                      style:heading4Bold.copyWith(color: AppColors.kcSecondaryOrange),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/successSubscription');
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      color: AppColors.kcSecondaryOrange,
                                    ),
                                    child: Text(
                                      'Pay',
                                      style: heading5SemiBold.copyWith(color: AppColors.kcBaseWhite),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
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