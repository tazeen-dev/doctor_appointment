import 'package:flutter/material.dart';

// --- Upcoming Appointment Widget ---
class UpcomingAppointment extends StatelessWidget {
  const UpcomingAppointment();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Upcoming Appointments',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF1F2937)),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 10,
              )
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://placehold.co/60x60/DBEAFE/3B82F6?text=Dr.+S',
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dr. Strange Walker', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 4),
                    Text('Internist Specialist', style: TextStyle(color: Colors.grey, fontSize: 14)),
                  ],
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Mon, 11 June', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                  SizedBox(height: 4),
                  Text('08:00 - 12:00', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}