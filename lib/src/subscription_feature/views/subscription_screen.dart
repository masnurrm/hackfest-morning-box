import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box_hackfest/src/home_feature/views/home_screen.dart';
import 'package:morning_box_hackfest/src/provider/global.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';
import 'package:morning_box_hackfest/src/subscription_feature/views/menu_option_screen.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;


class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  int _selectedIndex = 0;
    Map<String, dynamic> activeFood = {};
    String tomorrow = "";

 @override
  Widget build(BuildContext context) {

    Future<void> getActiveOrder() async {
    final url = Uri.parse("http://34.124.165.248/orders/active");

    try {
      final response = await http.get(
        url, 
        headers: {
          "Authorization": "Bearer " + Provider.of<Global>(context, listen:false).getUser()["id"],
        }
      );

      var data = await json.decode(response.body);
      
      tomorrow = DateFormat('EEEE').format(DateTime.now().add(const Duration(days: 1)));

      if(response.statusCode != 500) {
        setState(() {
        activeFood = data["data"]["package"]["foods"][tomorrow.toLowerCase()];
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(data["error"])),
        );
      }
    } catch(error) {
      print(error);
    }
  }

  getActiveOrder();

    return Scaffold(
      backgroundColor: AppColors.kcBaseWhite,
      appBar: AppBar(
        toolbarHeight: 80,
        foregroundColor: AppColors.kcBaseWhite,
        backgroundColor: AppColors.kcSecondaryOrange,
        elevation: 0,
        leading: Container(),
        title: Container(
          padding: EdgeInsets.only(top: 16, bottom: 16, right: 36),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'My Subscription',
              style: TextStyle(
                color: AppColors.kcBaseWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
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
              child: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/subscription');
              },
              child: Icon(Icons.shopping_bag_rounded),
            ),
            label: 'Subscription',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/reward');
              },
              child: Icon(Icons.confirmation_num_rounded)
            ),
            label: 'Poinku',
          ),
          
          BottomNavigationBarItem(
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
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Track your breakfast',
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
                                  'Renew Subscription >',
                                  style: body3Regular.copyWith(color: AppColors.kcSecondaryOrange),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/ic_trueCheck.png'
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Confirmed',
                                  style: body1Regular,
                                ),
                                Text(
                                  '19:00',
                                  style: body2Regular.copyWith(color: Colors.grey),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/ic_falseCheck.png'
                                ),
                                Text(
                                  'Prepare',
                                  style: body1Regular,
                                ),
                                Text(
                                  '03:00',
                                  style: body2Regular.copyWith(color: Colors.grey),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/ic_falseCheck.png'
                                ),
                                Text(
                                  'Deliver',
                                  style: body1Regular,
                                ),
                                Text(
                                  '05:50',
                                  style: body2Regular.copyWith(color: Colors.grey),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/ic_falseCheck.png'
                                ),
                                Text(
                                  'Arrive',
                                  style: body1Regular,
                                ),
                                Text(
                                  '06:10',
                                  style: body2Regular.copyWith(color: Colors.grey),
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
              Container(
                margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
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
                              activeFood["name"] ?? "",
                              style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                            ),
                          ),
                          const SizedBox(
                            height: 12
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              tomorrow + ", " + DateFormat.yMd().format(DateTime.now().add(const Duration(days: 1))),
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
                height: 16,
              ),
              Container(
                color: AppColors.kcSecondaryOrange,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    Text(
                      'A special breakfast package for you!',
                      style: heading5Bold.copyWith(color: AppColors.kcBaseWhite),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/renewSubscription');
                      },
                      child: Image.asset(
                        'assets/img/ic_packetListWhite.png'
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.kcBaseWhite.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: AppColors.kcDarkestWhite.withOpacity(0.5)),
                ),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Don\'t know what to eat yet?',
                              style: heading5SemiBold.copyWith(color: AppColors.kcBaseBlack),
                            ),
                          ),
                          const SizedBox(
                            height: 12
                          ),
                          Text(
                            'Answer these quick questions to get our recommendations',
                            style: body2Regular.copyWith(color: AppColors.kcBaseBlack),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/surveySubscription');
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 5,
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: AppColors.kcSecondaryOrange),
                          color: AppColors.kcSecondaryOrange
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Take survey!',
                            style: body2Bold.copyWith(color: AppColors.kcBaseWhite),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              )
            ]
          ),
        ),
      )
    );
  }
}