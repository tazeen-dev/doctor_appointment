import 'package:doctor_appointment/core/controller/components/green_button/green_button.dart';
import 'package:doctor_appointment/core/controller/utils/app_images/app_images.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/controller/components/bold_text/bold_text.dart';
import '../../../../core/controller/components/discription/discription.dart';
import '../../../../core/controller/utils/app_colors/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      'image': AppImages.backgroundimage,
      'title': 'Book Appointments Easily',
      'description':
      'Find the best doctors in your city and book appointments with just a few taps. Your health, simplified.'
    },
    {
      'image': AppImages.doctor1,
      'title': 'Track Your Health',
      'description':
      'Keep a digital record of your health history and upcoming appointments in one place.'
    },
    {
      'image': AppImages.doctorimage,
      'title': '24/7 Doctor Access',
      'description':
      'Chat with doctors anytime, anywhere. Your care is just a tap away.'
    },
  ];

  void nextPage() {
    if (currentPage < _onboardingData.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _skip() {
    _pageController.jumpToPage(_onboardingData.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = size.height;
    final screenWidth = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _onboardingData.length,
                onPageChanged: (index) {
                  setState(() => currentPage = index);
                },
                itemBuilder: (context, index) {
                  final data = _onboardingData[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.05,
                      vertical: screenHeight * 0.02,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: screenHeight*.1,),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(height: screenHeight*0.4,),
                            Container(
                              height: screenHeight * 0.30,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.greenColor.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Image.asset(
                                data['image']!,
                                height: screenHeight * 0.35,fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: screenHeight * 0.01),

                        BoldText(
                          data['title']!,
                          fontSize: 28,
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: screenHeight * 0.015),
                        DescriptionText(
                          data['description']!,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.08,
                vertical: screenHeight * 0.05,
              ),
              child: Column(
                children: [
                  SmoothPageIndicator(
                    controller: _pageController,        // Your PageController
                    count: _onboardingData.length,      // Total number of pages
                    effect: ExpandingDotsEffect(        // Type of animation
                      expansionFactor: 3,               // Dot zooms
                      spacing: 8.0,                     // Space between dots
                      radius: 8.0,                      // Corner roundness
                      dotWidth: 12.0,
                      dotHeight: 10.0,
                      dotColor: Colors.grey.shade300,
                      activeDotColor: AppColors.greenColor,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: _skip,
                        child:  Text("Skip",style: TextStyle(color: AppColors.greenColor,fontSize: 15,fontWeight: FontWeight.w600),),
                      ),
                      TextButton(
                        onPressed: nextPage,
                        child:Text("Next",style: TextStyle(color: AppColors.greenColor,fontSize: 15,fontWeight: FontWeight.w600),),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  if (currentPage == _onboardingData.length - 1)
                    GreenBoldButton(
                      text: "Get Started",
                      onPressed: () {
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

