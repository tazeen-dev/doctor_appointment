import 'package:flutter/material.dart';

import '../../../data/models/doctor_datamodel/doctor_datamodel.dart';
class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  const DoctorCard({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(12),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  doctor.image,
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
      height: 100,
                   color: Colors.grey[200],
                   child: const Icon(Icons.person, size: 50, color: Colors.grey),
                  ),
                ),
              ),
              if (doctor.isAvailable)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.cyan[100]?.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Available',
                      style: TextStyle(color: Colors.cyan, fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            doctor.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF1F2937)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            doctor.specialty,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 16),
                  const SizedBox(width: 4),
                  Text(
                    doctor.rating.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}