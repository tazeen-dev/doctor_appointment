import 'package:doctor_appointment/core/controller/components/bold_text/bold_text.dart';
import 'package:flutter/material.dart';
import '../../../core/controller/utils/app_colors/app_colors.dart';
import '../../../data/models/doctor_datamodel/doctor_datamodel.dart';
import '../../app_widgets/doctorcard_widget/doctor_card_widget.dart';

class RecommendedDoctors extends StatefulWidget {
  final List<Doctor> doctorsList;

  const RecommendedDoctors({super.key, required this.doctorsList});

  @override
  State<RecommendedDoctors> createState() => _RecommendedDoctorsState();
}

class _RecommendedDoctorsState extends State<RecommendedDoctors> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BoldText('Recommended Doctors'),
          const SizedBox(height: 16),
          const TabBar(
            isScrollable: true,
            labelColor: AppColors.greenColor,
            unselectedLabelColor: Colors.grey,
            indicatorColor: AppColors.greenColor,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: 'Latest',),
              Tab(text: 'Pediatric Specialist'),
              Tab(text: 'Available'),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 220,
            child: TabBarView(
              children: [
                _buildDoctorList(widget.doctorsList), // Latest
                _buildDoctorList(widget.doctorsList.where((d) => d.specialty.contains("Pediatric")).toList()),
                _buildDoctorList(widget.doctorsList.where((d) => d.isAvailable).toList()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDoctorList(List<Doctor> list) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: list.length,
      separatorBuilder: (_, __) => const SizedBox(width: 16),
      itemBuilder: (context, index) {
        return DoctorCard(doctor: list[index]);
      },
    );
  }
}
