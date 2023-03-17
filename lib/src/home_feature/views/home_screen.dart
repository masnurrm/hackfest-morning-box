import 'package:flutter/material.dart';
import 'package:morning_box_hackfest/src/provider/global.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  Map<String, dynamic> user = {};

  @override
  Widget build(BuildContext context) {
  
  void getUser() async {
    user = await Provider.of<Global>(context, listen:true).getUser();
  }
  getUser();

  print(user);
    return Scaffold(
      backgroundColor: AppColors.kcSecondaryOrange,
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
        currentIndex: 0,
        // onTap: _onItemTapped,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 20, left: 20, bottom: 40),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                 Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                        text: 'Hello, ',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.kcBaseWhite
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: user["name"],
                            style: TextStyle(
                              fontSize: 20, 
                              fontWeight: FontWeight.bold,
                              color: AppColors.kcBaseWhite
                            ),
                          )
                        ]
                      )
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.kcBaseWhite.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16.0),
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
                                Text(
                                  'Since using Morning Box, you\'ve been protected your body from various diseases!',
                                  style: body1Regular.copyWith(color: AppColors.kcBaseWhite),
                                ),
                                const SizedBox(
                                  height: 12
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                    onTap: () async {
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16.0),
                                        border: Border.all(color: Colors.white),
                                      ),
                                      child: Text(
                                        'Invite Friends to Use Morning Box >',
                                        style: body3Regular.copyWith(color: AppColors.kcBaseWhite),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/img/ic_home.png',
                            width: MediaQuery.of(context).size.width / 5,
                          ),
                        ],
                      ),
                  ),
                ],
              ),
            )
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32),),
                  color: AppColors.kcBaseWhite
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
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
                                      '2 Days Streak!',
                                      style: heading5SemiBold.copyWith(color: AppColors.kcSecondaryOrange),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12
                                  ),
                                  Text(
                                    'Exciting prizes await you in the 20th Streak!',
                                    style: body2Regular.copyWith(color: AppColors.kcBaseBlack),
                                  ),
                                  const SizedBox(
                                    height: 12
                                  ),
                                  SizedBox(
                                    height: 8,
                                    child: LinearProgressIndicator(
                                      value: 2/7, // set the progress value here
                                      backgroundColor: Colors.grey[300], // set the background color
                                      valueColor: const AlwaysStoppedAnimation<Color>(AppColors.kcSecondaryOrange), // set the progress color
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/img/ic_lihatpoin.png',
                                  width: MediaQuery.of(context).size.width / 5,
                                  height: 24
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'See Poinku!',
                                  style: body2Regular.copyWith(color: AppColors.kcSecondaryOrange, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Your breakfast this week!',
                                    style: heading5SemiBold
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                    onTap: () async {
                                      Navigator.pushNamed(context, '/renewSubscription');
                                    },
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
                            const SizedBox(
                              height: 12
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CardMenu(day: 'Monday', imagePath: 'assets/img/ic_menu1.png',cardColor: AppColors.kcSuccessGreen,),
                                  CardMenu(day: 'Tuesday', imagePath: 'assets/img/ic_menu2.png',cardColor: AppColors.kcDangerRed,),
                                  CardMenu(day: 'Wednesday', imagePath: 'assets/img/ic_menu3.png',cardColor: Colors.grey),
                                  CardMenu(day: 'Thursday', imagePath: 'assets/img/ic_menu4.png',cardColor: Colors.grey),
                                  CardMenu(day: 'Friday', imagePath: 'assets/img/ic_menu5.png',cardColor: Colors.grey),
                                  CardMenu(day: 'Satuday', imagePath: 'assets/img/ic_menu6.png',cardColor: Colors.grey),
                                  CardMenu(day: 'Sunday', imagePath: 'assets/img/ic_menu7.png',cardColor: Colors.grey),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              'A special breakfast package for you!',
                              style: heading5Bold,
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            GestureDetector(
                              onTap: () async {
                                Navigator.pushNamed(context, '/subscription');
                              },
                              child: Image.asset(
                                'assets/img/ic_packetList.png'
                              ),
                            )
                            
                          ],
                        ),
                      )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container CardMenu({required String day, required String imagePath, required Color cardColor}) {
    return Container(
      width: 90,
      child: Card(
        elevation: 4,
        color: cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              imagePath
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              day,
              style: body2Bold.copyWith(color: AppColors.kcBaseWhite),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}