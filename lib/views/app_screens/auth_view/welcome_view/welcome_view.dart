import 'package:flutter/material.dart';

import '../../../app_widgets/welcome_widget/welcome_widget.dart';
class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          WelcomeButtons(
            onLogin: () => Navigator.pushNamed(context, '/login'),
            onSignup: () => Navigator.pushNamed(context, '/signup'),
          )
        ],
      ),
    );
  }
}
