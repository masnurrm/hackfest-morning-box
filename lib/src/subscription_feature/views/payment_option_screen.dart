import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box/src/shared/colors.dart';
import 'package:morning_box/src/shared/styles.dart';

class PaymentMenu extends StatefulWidget {
  const PaymentMenu({super.key});

  @override
  State<PaymentMenu> createState() => _PaymentMenuState();
}

class _PaymentMenuState extends State<PaymentMenu> {
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
          child: Icon(
            Icons.arrow_back,
            color: AppColors.kcBaseBlack
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
                              child: Text(
                                'Renew Subscription >',
                                style: body3Regular.copyWith(color: Colors.grey),
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
                      Expanded(
                        child: SizedBox(),
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