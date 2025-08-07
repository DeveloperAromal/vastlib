import 'package:flutter/material.dart';
import '../widgets/sidebar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFFFFF), // Main content area: white
      body: Row(
        children: [
          Sidebar(), // Light sidebar already styled
          Expanded(
            child: Center(
              child: Text(
                "Main Content Area",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF1E293B), // Tailwind slate-800
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
