import 'package:apps_getx/widget/movie_detail.dart';
import 'package:flutter/material.dart';

class CodeGeass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      title: 'Code Geass',
      imagePath: 'assets/images/codegeass.jpeg',
      description: 'Lelouch vi Britannia, pangeran terbuang, memperoleh kekuatan Geass yang memungkinkan dia mengendalikan orang lain. Dengan kekuatan ini, Lelouch memimpin pemberontakan melawan Kerajaan Britannia untuk membebaskan Jepang, sambil mempertaruhkan segala sesuatu dalam permainan strategi yang penuh intrik dan pengkhianatan.',
    );
  }
}
