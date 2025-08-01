import 'package:flutter/material.dart';
import './dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: SizedBox(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Authenticate",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: const InputDecoration(
                      labelText: "Enter username",
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: const InputDecoration(
                      labelText: "Enter password",
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 400,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DashboardScreen()))
                            },
                        child: Text("Login")))
              ],
            ),
          ),
        ));
  }
}
