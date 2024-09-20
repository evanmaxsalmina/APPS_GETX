import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text("INI PROFILE"),
              
            ],
          ),
        ),
      ),
    );
  }
}
