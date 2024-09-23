import 'package:flutter/material.dart';

class CardMovie extends StatelessWidget {
  final String title;
  final String imagePath;

  const CardMovie({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 140,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(title, style: TextStyle(color: Colors.white)),
      ],
    );
  }
}