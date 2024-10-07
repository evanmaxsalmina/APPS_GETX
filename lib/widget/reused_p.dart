import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imageUrl;

  ProfilePicture({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final String username;
  final String bio;

  ProfileInfo({required this.username, required this.bio});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Username: $username',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(
          'Bio: $bio',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ],
    );
  }
}

class WatchlistItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  WatchlistItem({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Image.asset(imageUrl, width: 80, height: 80),
          SizedBox(height: 10),
          Text(title, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}