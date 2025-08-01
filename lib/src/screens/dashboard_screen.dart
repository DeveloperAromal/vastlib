import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0A0A0A), // Tailwind neutral-900
      body: Row(
        children: [
          Sidebar(),
          Expanded(
            child: Center(
              child: Text(
                "Main Content Area",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
