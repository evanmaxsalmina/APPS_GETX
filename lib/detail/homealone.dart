import 'package:apps_getx/widget/movie_detail.dart';
import 'package:flutter/material.dart';

class HomeAlone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      title: 'Home Alone',
      imagePath: 'assets/images/homealone.jpg',
      description:
          'Saat tertinggal sendirian di rumah saat Natal, Kevin McCallister, bocah 8 tahun, harus melawan dua pencuri dengan serangkaian jebakan cerdik. Komedi keluarga yang lucu dan penuh aksi selama musim liburan.',
    );
  }
}
