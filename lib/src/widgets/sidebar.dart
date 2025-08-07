import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name ?? "";

    return Container(
      width: 280,
      decoration: const BoxDecoration(
        color: Color(0xFFF1F5F9),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(2, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "VASTLIB",
              style: TextStyle(
                color: Color(0xFF1E293B),
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
          ),
          const Divider(color: Color(0xFFCBD5E1), height: 1),
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 6),
                SideBtn(
                    title: "Dashboard",
                    icon: Icons.dashboard_customize_outlined,
                    currentRoute: currentRoute,
                    routeName: "/dashboard"),
                SideBtn(
                    title: "Add Book",
                    icon: Icons.bookmark_add,
                    currentRoute: currentRoute,
                    routeName: "/add-book"),
                SideBtn(
                    title: "Catalog Search",
                    icon: Icons.search,
                    currentRoute: currentRoute,
                    routeName: "/catalog-search"),
                SideBtn(
                    title: "Check Out Book",
                    icon: Icons.bookmark_added_sharp,
                    currentRoute: currentRoute,
                    routeName: "/checkout"),
                SideBtn(
                    title: "Check In Book",
                    icon: Icons.undo,
                    currentRoute: currentRoute,
                    routeName: "/checkin"),
                SideBtn(
                    title: "Holds & Reserves",
                    icon: Icons.how_to_reg,
                    currentRoute: currentRoute,
                    routeName: "/holds"),
                SideBtn(
                    title: "Members",
                    icon: Icons.people_alt_outlined,
                    currentRoute: currentRoute,
                    routeName: "/members"),
                SideBtn(
                    title: "Add Member",
                    icon: Icons.person_add_alt,
                    currentRoute: currentRoute,
                    routeName: "/add-member"),
                SideBtn(
                    title: "Orders & Acquisitions",
                    icon: Icons.shopping_cart_checkout,
                    currentRoute: currentRoute,
                    routeName: "/acquisitions"),
                SideBtn(
                    title: "Serials Management",
                    icon: Icons.view_timeline,
                    currentRoute: currentRoute,
                    routeName: "/serials"),
                SideBtn(
                    title: "Reports",
                    icon: Icons.insert_chart_outlined,
                    currentRoute: currentRoute,
                    routeName: "/reports"),
                SideBtn(
                    title: "Settings",
                    icon: Icons.settings,
                    currentRoute: currentRoute,
                    routeName: "/settings"),
                SideBtn(
                    title: "User Management",
                    icon: Icons.manage_accounts,
                    currentRoute: currentRoute,
                    routeName: "/users"),
              ],
            ),
          ),
          const Divider(
              color: Color(0xFFCBD5E1),
              thickness: 1,
              indent: 16,
              endIndent: 16),
          SideBtn(
              title: "Logout",
              icon: Icons.logout,
              currentRoute: currentRoute,
              routeName: "/logout"),
          const SizedBox(height: 6),
        ],
      ),
    );
  }
}

class SideBtn extends StatefulWidget {
  final String title;
  final IconData icon;
  final String currentRoute;
  final String routeName;

  const SideBtn({
    required this.title,
    required this.icon,
    required this.currentRoute,
    required this.routeName,
    super.key,
  });

  @override
  State<SideBtn> createState() => _SideBtnState();
}
class _SideBtnState extends State<SideBtn> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    final bool isActive = widget.currentRoute == widget.routeName;

    Color backgroundColor = isActive
        ? Colors.lightBlue.shade500
        : isHovering
            ? const Color(0xFFE2E8F0) 
            : Colors.transparent;

    Color contentColor = isActive
        ? Colors.white
        : isHovering
            ? const Color(0xFF334155)
            : const Color(0xFF64748B);

    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (widget.routeName != widget.currentRoute) {
            Navigator.pushNamed(context, widget.routeName);
          }
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(widget.icon, color: contentColor, size: 20),
              const SizedBox(width: 14),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 15,
                  color: contentColor,
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
