import 'package:flutter/material.dart';
import './src/screens/login_screen.dart';
import './src/screens/dashboard_screen.dart';

void main() {
  runApp(const VASTLibApp());
}

class VASTLibApp extends StatelessWidget {
  const VASTLibApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VASTLib',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        // Add more routes as needed
      },
    );
  }
}
