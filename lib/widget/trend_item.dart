import 'package:flutter/material.dart';

class TrendItem extends StatelessWidget {
  final String ranking;
  final String title;
  final String rating;
  final String imagePath;

  const TrendItem({
    super.key,
    required this.ranking,
    required this.title,
    required this.rating,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ranking,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), 
          ),
          clipBehavior: Clip.hardEdge, 
          child: Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              rating,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}