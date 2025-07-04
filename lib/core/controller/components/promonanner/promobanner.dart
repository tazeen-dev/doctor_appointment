import 'package:flutter/material.dart';

import '../../utils/app_colors/app_colors.dart';

class PromoBanner extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String doctorCount;

  const PromoBanner({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.doctorCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [AppColors.ligtgreen, AppColors.greenColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.cyan.withOpacity(0.3),
            blurRadius: 15,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: const Text('Book Today!', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),

          const SizedBox(width: 16),

          // Image
          Column(
            children: [
              Image.asset(
              imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 8),
              Text(
                doctorCount,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
