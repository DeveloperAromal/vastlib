import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: const Color(0xFF232325), // gray-800
        border: const Border(
          right: BorderSide(color: Colors.white10, width: 1),
        ),
      ),
      child: Column(
        children: const [
          SideBtn(title: "Dashboard", icon: Icons.dashboard_customize_outlined),
          SideBtn(title: "Members", icon: Icons.people_alt_outlined),
          SideBtn(title: "Add Book", icon: Icons.bookmark_add),
          SideBtn(title: "Check Out Book", icon: Icons.bookmark_added_sharp),
          SideBtn(title: "Settings", icon: Icons.settings),
          Divider(
              color: Colors.white24, thickness: 1, indent: 12, endIndent: 12),
          SideBtn(title: "Logout", icon: Icons.logout),
        ],
      ),
    );
  }
}

class SideBtn extends StatelessWidget {
  final String title;
  final IconData icon;
  const SideBtn({required this.title, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          // Add your navigation or action here
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: Row(
            children: [
              Icon(icon, color: Colors.white, size: 20),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
