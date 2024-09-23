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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GenreBox(genre: "Action"),
                  GenreBox(genre: "Comedy"),
                  GenreBox(genre: "Romance"),
                ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardMovie(
                      title: "Civil War",
                      imagePath: 'assets/images/civil.jpeg'),
                  CardMovie(
                      title: "Uglies", imagePath: 'assets/images/ugliest.jpg'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
