import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';

class VoucherOption extends StatefulWidget {
  const VoucherOption({super.key});

  @override
  State<VoucherOption> createState() => _VoucherOptionState();
}

class _VoucherOptionState extends State<VoucherOption> {
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
              'Your Voucher',
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
                              'assets/img/ic_discountBlue.png',
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
                                      'Up to 50% discount',
                                      style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'This coupon can be used by purchasing the meal plan at least once.',
                                      style: body2Regular.copyWith(color: AppColors.kcBaseBlack),
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
                              'assets/img/ic_discountBlue.png',
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
                                      'Up to 50% discount',
                                      style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'This coupon can be used by purchasing the meal plan at least once.',
                                      style: body2Regular.copyWith(color: AppColors.kcBaseBlack),
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
                              'assets/img/ic_discountBlue.png',
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
                                      'Up to 50% discount',
                                      style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'This coupon can be used by purchasing the meal plan at least once.',
                                      style: body2Regular.copyWith(color: AppColors.kcBaseBlack),
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