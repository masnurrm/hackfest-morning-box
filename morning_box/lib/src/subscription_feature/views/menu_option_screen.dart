import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box/src/shared/colors.dart';
import 'package:morning_box/src/shared/styles.dart';
import 'package:morning_box/src/subscription_feature/views/payment_option_screen.dart';
import 'package:morning_box/src/subscription_feature/views/subscription_screen.dart';

class MenuOption extends StatefulWidget {
  const MenuOption({super.key});

  @override
  State<MenuOption> createState() => _MenuOptionState();
}

class _MenuOptionState extends State<MenuOption> {
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubscriptionScreen()),
              );
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Your Current Package',
                              style: heading5SemiBold
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                        decoration: BoxDecoration(
                          color: AppColors.kcSecondaryOrange,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: AppColors.kcDarkestWhite.withOpacity(0.5)),
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
                                style: heading5SemiBold.copyWith(color: AppColors.kcBaseWhite),
                              ),
                            ),
                            const SizedBox(
                              height: 12
                            ),
                            Text(
                              '340 calories per meal, making your diet program a success',
                              style: body2Regular.copyWith(color: AppColors.kcBaseWhite),
                            ),
                            const SizedBox(
                              height: 12
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Rp140.000',
                                style: heading5SemiBold.copyWith(color: AppColors.kcBaseWhite),
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
                              'assets/img/ic_menu2.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.width / 4,
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
                                      'Paket Hemat',
                                      style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Especially for those of you who want to have a frugal breakfast',
                                      style: body2Regular.copyWith(color: AppColors.kcBaseBlack),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Rp105.000',
                                      style: heading5Bold.copyWith(color: AppColors.kcSecondaryOrange),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
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
                              'assets/img/ic_menu2.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width / 4,
                              height: MediaQuery.of(context).size.width / 4,
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
                                      'Paket Hemat 2',
                                      style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Especially for those of you who want to have a frugal breakfast',
                                      style: body2Regular.copyWith(color: AppColors.kcBaseBlack),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Rp105.000',
                                      style: heading5Bold.copyWith(color: AppColors.kcSecondaryOrange),
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PaymentMenu()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: AppColors.kcSecondaryOrange,
                            ),
                            child: Text(
                              'Continue Payment',
                              style: heading5SemiBold.copyWith(color: AppColors.kcBaseWhite),
                            ),
                          ),
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