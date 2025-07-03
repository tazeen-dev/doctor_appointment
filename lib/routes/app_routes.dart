import 'package:doctor_appointment/views/app_screens/starting_view/onboarding_view/onboarding_screens.dart';
import 'package:doctor_appointment/views/app_screens/starting_view/splash_view/splash_screen.dart';
import 'package:flutter/material.dart';

import '../views/app_screens/auth_view/login_view/login_screen.dart';
import '../views/app_screens/auth_view/signup_view/signup_view.dart';
import '../views/app_screens/auth_view/welcome_view/welcome_view.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/splash':(context) => const SplashScreen(),
    '/onboarding':(context)=>const OnboardingScreen(),
    '/welcome': (context) => const WelcomeView(),
    '/login': (context) => const LoginScreen(),
    '/signup': (context) => const SignupScreen(),
  };
}
