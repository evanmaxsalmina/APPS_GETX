import 'package:apps_getx/widget/movie_detail.dart';
import 'package:flutter/material.dart';

class Titanic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      title: 'Titanic',
      imagePath: 'assets/images/titanic.jpg',
      description: 'Kisah cinta epik antara Jack dan Rose di atas kapal Titanic yang megah namun tragis. Di tengah perbedaan status sosial, cinta mereka tumbuh, tetapi takdir tragis kapal yang tenggelam mengubah segalanya.',
    );
  }
}
