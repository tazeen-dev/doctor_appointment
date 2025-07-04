import 'package:flutter/material.dart';
class PromoBanner extends StatelessWidget {
  const PromoBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xFF06B6D4), Color(0xFF3B82F6)],
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
                const Text(
                  'Treated doctor on your schedule',
                  style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Consult A Doctor',
                  style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.3),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 0,
                  ),
                  child: const Text('Book Today!', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Column(
            children: [
              Image.network(
                'https://placehold.co/80x80/FFFFFF/3B82F6?text=Doc',
                width: 80,
                height: 80,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.person, size: 80, color: Colors.white),
              ),
              const SizedBox(height: 8),
              const Text(
                '8K 800+\nActive Doctor',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}