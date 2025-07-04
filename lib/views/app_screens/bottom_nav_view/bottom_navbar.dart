import 'package:doctor_appointment/views/app_screens/appointment_view/appointment_screen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import '../appointment_detail_view/appointment_detail_screen.dart';
import '../home_view/home_screen.dart';
import '../profile_view/profile_screen.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
   const AppointmentScreen(),
    const AppointmentDetailScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.white,
        activeColor: Colors.teal,
        color: Colors.grey[600],
        style: TabStyle.reactCircle, // Other styles: fixed, flip, react, textIn, etc.
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.calendar_today, title: 'Appointments'),
          TabItem(icon: Icons.message, title: 'Messages'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}

