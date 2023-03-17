import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box_hackfest/src/home_feature/views/home_screen.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/menu_option_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/payment_option_screen.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/subscription_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeStrikeScreen extends StatefulWidget {
  const HomeStrikeScreen({super.key});

  @override
  State<HomeStrikeScreen> createState() => _HomeStrikeScreenState();
}

class _HomeStrikeScreenState extends State<HomeStrikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kcBaseWhite,
      appBar: AppBar(
        toolbarHeight: 80,
        foregroundColor: AppColors.kcBaseWhite,
        backgroundColor: AppColors.kcSecondaryOrange,
        elevation: 0,
        leading: Container(
          
        ), 
        title: Container(
          padding: const EdgeInsets.only(top: 32, bottom: 16),
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'Point Box',
              style: TextStyle(
                color: AppColors.kcBaseWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
              },
              child: Container(
                margin: const EdgeInsets.only(top: 32, bottom: 16, right: 8),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: AppColors.kcBaseWhite),
                ),
                child: Text(
                  'Box Store >',
                  style: body3Regular.copyWith(color: AppColors.kcBaseWhite),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: body2Regular,
        unselectedLabelStyle: body2Regular,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/subscription');
              },
              child: const Icon(Icons.shopping_bag_rounded),
            ),
            label: 'Subscription',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num_rounded),
            label: 'Poinku',
          ),
          
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 1,
        // onTap: _onItemTapped,
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
                      Center(
                        child: Image.asset(
                          'assets/img/ic_boss.png',
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      LinearPercentIndicator(
                        animation: true,
                        animationDuration: 2000,
                        width: MediaQuery.of(context).size.width - 40,
                        lineHeight: 14,
                        percent: 0.5,
                        backgroundColor: AppColors.kcDarkestWhite,
                        progressColor: AppColors.kcSecondaryOrange,
                        curve: Curves.bounceIn,
                        barRadius: Radius.circular(80),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Warga',
                                  style: body1SemiBold.copyWith(color: AppColors.kcDarkestWhite),
                                ),
                                Text(
                                  '0 Strikes',
                                  style: body1SemiBold.copyWith(color: AppColors.kcDarkestWhite),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Bos',
                                  style: body1SemiBold,
                                ),
                                Text(
                                  '20 Strikes',
                                  style: body1SemiBold,
                                )
                              ],
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
                              'Your Achievement Rewards',
                              style: heading5SemiBold
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/renewSubscription');
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(color: AppColors.kcSecondaryOrange),
                                ),
                                child: Text(
                                  'See All >',
                                  style: body3Regular.copyWith(color: AppColors.kcSecondaryOrange),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
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
                        height: 24,
                      ),
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Rank Achievement Rewards',
                              style: heading5SemiBold
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/renewSubscription');
                            },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(color: AppColors.kcSecondaryOrange),
                                ),
                                child: Text(
                                  'See All >',
                                  style: body3Regular.copyWith(color: AppColors.kcSecondaryOrange),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
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
                              'assets/img/ic_discountOrange.png',
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
                        height: 12,
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
                              'assets/img/ic_discountYellow.png',
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