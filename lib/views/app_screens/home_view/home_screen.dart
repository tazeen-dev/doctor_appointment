import 'package:doctor_appointment/views/app_widgets/drawer_widget/drawer_widget.dart';
import 'package:flutter/material.dart';

import '../../../data/models/doctor_datamodel/doctor_datamodel.dart';
import '../../app_widgets/promobanner_widget/promobanner_widget.dart';
import '../../app_widgets/upcomming_appointment_widget/upcomming-appointment_widget.dart';
import '../../header_view/appbar_view/app_bar.dart';
import '../recommended_doctor/recommended_docror.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Doctor> doctorsList = [
    Doctor(
      name: 'Dr. Marci Maiden',
      specialty: 'Internist Specialist',
      rating: 4.5,
      image: 'https://placehold.co/100x100/E0F2FE/3B82F6?text=Dr.+M',
      isAvailable: true,
    ),
    Doctor(
      name: 'Dr. Raz Invoker',
      specialty: 'Internist',
      rating: 4.5,
      image: 'https://placehold.co/100x100/D1FAE5/10B981?text=Dr.+R',
      isAvailable: true,
    ),
    Doctor(
      name: 'Dr. Ferry Ichsan',
      specialty: 'Pediatric Specialist',
      rating: 5.0,
      image: 'https://placehold.co/100x100/FEF3C7/F59E0B?text=Dr.+F',
      isAvailable: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DoctorDrawer(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          children: [
            Header(),
            const SizedBox(height: 24),
            const PromoBanner(),
            const SizedBox(height: 24),
            RecommendedDoctors(doctorsList: doctorsList,),
            const SizedBox(height: 24),
            const UpcomingAppointment(),
          ],
        ),
      ),
    );
  }
}
