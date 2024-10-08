import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apps_getx/controller/login_ctr.dart';

class LoginPage extends StatelessWidget {
  final LoginController _loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 28, 21, 36),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png', 
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, 
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Explore thousands of movies from various genres and eras.",
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white70, 
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: _loginController.navigateToHomePage,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Get Started >>',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}