import 'package:flutter/material.dart';
import 'package:apps_getx/widget/genre.dart';
import 'package:apps_getx/widget/search.dart';
import 'package:apps_getx/widget/card_ctgry.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 21, 36),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 60),
              Search(),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 220),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GenreBox(genre: "Action"),
                    SizedBox(width: 20), 
                    GenreBox(genre: "Comedy"),
                    SizedBox(width: 20),
                    GenreBox(genre: "Romance"),
                    SizedBox(width: 20),
                    GenreBox(genre: "Drama"),
                    SizedBox(width: 20),
                    GenreBox(genre: "Thriller"),
                    SizedBox(width: 20),
                    GenreBox(genre: "Horror"),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(right: 170),
                child: Text(
                  "Latest Movie",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 40),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardMovie(
                        title: "Civil War",
                        imagePath: 'assets/images/civil.jpeg'),
                    SizedBox(width: 20), 
                    CardMovie(
                        title: "Uglies", imagePath: 'assets/images/ugliest.jpg'),
                    SizedBox(width: 20),
                    CardMovie(
                        title: "Avengers", imagePath: 'assets/images/avengers.jpeg'),
                    SizedBox(width: 20),
                    CardMovie(
                        title: "Popeye",
                        imagePath: 'assets/images/popeye.jpg'),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}