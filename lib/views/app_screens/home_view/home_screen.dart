import 'package:doctor_appointment/core/controller/utils/app_images/app_images.dart';
import 'package:doctor_appointment/views/app_widgets/drawer_widget/drawer_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/controller/components/promonanner/promobanner.dart';
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
      image: AppImages.backgroundimage,
      isAvailable: true,
    ),
    Doctor(
      name: 'Dr. Raz Invoker',
      specialty: 'Internist',
      rating: 4.5,
      image: AppImages.doctor1,
      isAvailable: true,
    ),
    Doctor(
      name: 'Dr. Ferry Ichsan',
      specialty: 'Pediatric Specialist',
      rating: 5.0,
      image: AppImages.doctorimage,
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
            const PromoBannerCarousel(),
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
