import 'package:apps_getx/widget/movie_detail.dart';
import 'package:flutter/material.dart';

class HarryPotter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      title: 'Harry Potter',
      imagePath: 'assets/images/harry1.jpeg',
      description: 'Harry Potter, seorang anak yatim piatu, menemukan dirinya sebagai penyihir dan memulai petualangan magis di Hogwarts. Bersama teman-temannya, dia menghadapi tantangan dan misteri yang menghubungkannya dengan penyihir jahat, Lord Voldemort.',
    );
  }
}
