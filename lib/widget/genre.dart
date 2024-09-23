import 'package:flutter/material.dart';

class GenreBox extends StatelessWidget {
  final String genre;

  const GenreBox({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white10,
      ),
      child: Center(
        child: Text(genre, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}