import 'package:flutter/material.dart';
import '../../../../core/controller/components/green_button/green_button.dart';

class WelcomeButtons extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onSignup;

  const WelcomeButtons({
    super.key,
    required this.onLogin,
    required this.onSignup,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        GreenBoldButton(
          text: "Login",
          onPressed: onLogin,
        ),
        SizedBox(height: screenHeight * 0.02),
        GreenBoldButton(
          text: "Sign Up",
          onPressed: onSignup,
        ),
      ],
    );
  }
}
