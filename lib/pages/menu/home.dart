import 'package:apps_getx/widget/image.dart';
import 'package:apps_getx/widget/moviecard.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 28, 21, 36),
        child: Center(
          child: Column(
            children: [
              MovieCard(
                title: 'Spiderman: No Way Home',
                rating: 'Rating: 9/10',
                imagePath: 'assets/images/spiderman.jpg',
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(right: 250.0),
                child: Text(
                  'For You',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ImageCarousel(
                imagePaths: [
                  'assets/images/harry1.jpeg',
                  'assets/images/homealone.jpg',
                  'assets/images/dp.jpeg',
                  'assets/images/nemo.jpeg', 
                  'assets/images/titanic.jpg',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}