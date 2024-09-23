import 'package:flutter/material.dart';
class ImageCarousel extends StatelessWidget {
  final List<String> imagePaths;

  const ImageCarousel({required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Set the height of the ListView
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.only(right: 15), // Add a 10-pixel margin to the right
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePaths[index]),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          );
        },
      ),
    );
  }
}