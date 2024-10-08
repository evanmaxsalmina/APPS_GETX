import 'package:flutter/material.dart';
import 'package:apps_getx/widget/reused_p.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 21, 36),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              ProfilePicture(imageUrl: 'assets/images/profile.png'),
              SizedBox(height: 20),
              ProfileInfo(username: 'Dapara', bio: 'YUNG IYUNG IYUNG'),
              SizedBox(height: 20),
              Text(
                'Watchlist:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 1,
                children: [
                  Image.asset('assets/images/spiderman.jpg', width: 120, height: 120),
                  Image.asset('assets/images/spiderman.jpg', width: 120, height: 120),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}