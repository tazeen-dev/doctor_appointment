import 'package:doctor_appointment/core/controller/utils/app_icons/app_icons.dart';
import 'package:doctor_appointment/views/app_screens/starting_view/onboarding_view/onboarding_screens.dart';
import 'package:flutter/material.dart';
import '../../../../core/controller/utils/app_colors/app_colors.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _logoAnimation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _logoAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();

    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Positioned(
            top: -screenWidth * 0.1,
            right: -screenWidth * 0.1,
            child: Container(
              width: screenWidth * 0.40,
              height: screenWidth * 0.40,
              decoration: BoxDecoration(
                color: AppColors.greenColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: -screenWidth * 0.1,
            right: -screenWidth * 0.1,
            child: Container(
              width: screenWidth * 0.32,
              height: screenWidth * 0.32,
              decoration: BoxDecoration(
                color: AppColors.greenColor.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -screenWidth * 0.1,
            left: -screenWidth * 0.1,
            child: Container(
              width: screenWidth * 0.40,
              height: screenWidth * 0.40,
              decoration: BoxDecoration(
                color: AppColors.greenColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -screenWidth * 0.07,
            left: -screenWidth * 0.07,
            child: Container(
              width: screenWidth * 0.30,
              height: screenWidth * 0.30,
              decoration: BoxDecoration(
                color: AppColors.greenColor.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: ScaleTransition(
              scale: _logoAnimation,
              child:Image(image: AssetImage(AppIcons.splash),
                height: screenHeight * 0.40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
