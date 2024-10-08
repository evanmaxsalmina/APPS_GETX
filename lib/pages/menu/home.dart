import 'package:apps_getx/detail/codegeass.dart';
import 'package:apps_getx/detail/deadpool.dart';
import 'package:apps_getx/detail/homealone.dart';
import 'package:apps_getx/detail/horimiya.dart';
import 'package:apps_getx/detail/nemo.dart';
import 'package:apps_getx/detail/ngnl.dart';
import 'package:apps_getx/detail/sao.dart';
import 'package:apps_getx/detail/titanic.dart';
import 'package:apps_getx/detail/wanpis.dart';
import 'package:apps_getx/widget/moviecard.dart';
import 'package:apps_getx/widget/image.dart';
import 'package:apps_getx/detail/harrypotter.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 28, 21, 36),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MovieCard(
                  title: 'Spiderman: No Way Home',
                  rating: 'Rating: 9/10',
                  imagePath: 'assets/images/spiderman.jpg',
                ),
                SizedBox(height: 20),
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
                  imageCaptions: [
                    'Harry Potter',
                    'Home Alone',
                    'DP',
                    'Finding Nemo',
                    'Titanic',
                  ],
                  routes: [
                    HarryPotter(),
                    HomeAlone(),
                    Deadpool(),
                    Nemo(),
                    Titanic()
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(right: 250.0),
                  child: Text(
                    'Anime',
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
                    'assets/images/onepiece.jpg',
                    'assets/images/horimiya.jpg',
                    'assets/images/sao.jpg',
                    'assets/images/codegeass.jpeg',
                    'assets/images/ngnl.jpg',
                  ],
                  imageCaptions: [
                    'One Piece',
                    'Horimiya',
                    'SAO',
                    'Code Geass',
                    'No Game No Life'
                  ],
                  routes: [
                    Wanpis(),
                    Horimiya(),
                    Sao(),
                    CodeGeass(),
                    Ngnl()

                    
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
