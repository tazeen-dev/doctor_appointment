

import 'package:flutter/material.dart';

class DoctorDrawer extends StatelessWidget {
  const DoctorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer Header
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.cyan),
            child: Text(
              '👨‍⚕️ Dr. Tazeen',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),

          // Menu Items
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: const Text('Appointments'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
