import 'package:apps_getx/widget/movie_detail.dart';
import 'package:flutter/material.dart';

class Sao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      title: 'SAO',
      imagePath: 'assets/images/sao.jpg',
      description: 'Dalam dunia game virtual reality yang mematikan, Kirito dan ribuan pemain lainnya terjebak dan harus berjuang untuk bertahan hidup. Jika mereka mati di dalam game, mereka juga mati di dunia nyata. Kirito berusaha mengalahkan tantangan demi kebebasan mereka.',
    );
  }
}
