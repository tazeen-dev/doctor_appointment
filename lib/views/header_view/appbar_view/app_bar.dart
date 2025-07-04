import 'package:flutter/material.dart';
class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
        'Bimora Design',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF1F2937)),
    ),
    SizedBox(height: 4),
    Text(
    'Jakarta, Indonesia',
    style: TextStyle(fontSize: 14, color: Colors.grey),
    ),
    ],
    ),
    Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    spreadRadius: 1,
    blurRadius: 10,
    )
    ]
    ),
    child: IconButton(
    icon: Badge(
    backgroundColor: Colors.red,
    child: const Icon(Icons.notifications_none_outlined, color: Color(0xFF4B5563)),
    ),
    onPressed: () {},
    ),
    ),
    ],
    ),

    );
  }
}