import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:morning_box_hackfest/src/shared/colors.dart';
import 'package:morning_box_hackfest/src/shared/styles.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  int selectedOptionIndex = 0;
  
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
              Navigator.pushNamed(context, '/surveySubscription');
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
        actions: [
          Container(
            padding: const EdgeInsets.only(top: 32, right: 16),
            child: const Text.rich(
              TextSpan(
                style: TextStyle(
                  color: AppColors.kcBaseBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: '1/',
                  ),
                  TextSpan(
                    text: '6',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]
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
                      const SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Do you need a quick time for breakfast?',
                          style: heading3SemiBold
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedOptionIndex = 0; // set the selected option index to 0 when the first option is clicked
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.kcSecondaryOrange.withOpacity(0.1),
                              border: Border.all(
                                color: selectedOptionIndex == 0 ? AppColors.kcSecondaryOrange : AppColors.kcSecondaryOrange.withOpacity(0.1), // if the first option is selected, use blue border color, otherwise use grey border color
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Option 1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedOptionIndex = 1; // set the selected option index to 1 when the second option is clicked
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.kcSecondaryOrange.withOpacity(0.1),
                              border: Border.all(
                                color: selectedOptionIndex == 1 ? AppColors.kcSecondaryOrange : AppColors.kcSecondaryOrange.withOpacity(0.1), // if the first option is selected, use blue border color, otherwise use grey border color
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Option 2',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedOptionIndex = 2; // set the selected option index to 1 when the second option is clicked
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.kcSecondaryOrange.withOpacity(0.1),
                              border: Border.all(
                                color: selectedOptionIndex == 2 ? AppColors.kcSecondaryOrange : AppColors.kcSecondaryOrange.withOpacity(0.1), // if the first option is selected, use blue border color, otherwise use grey border color
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Option 2',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedOptionIndex = 3; // set the selected option index to 1 when the second option is clicked
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: AppColors.kcSecondaryOrange.withOpacity(0.1),
                              border: Border.all(
                                color: selectedOptionIndex == 3 ? AppColors.kcSecondaryOrange : AppColors.kcSecondaryOrange.withOpacity(0.1), // if the first option is selected, use blue border color, otherwise use grey border color
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              'Option 2',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      
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
                      'Next',
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