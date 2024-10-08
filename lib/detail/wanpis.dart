import 'package:apps_getx/widget/movie_detail.dart';
import 'package:flutter/material.dart';

class Wanpis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      title: 'One Piece',
      imagePath: 'assets/images/onepiece.jpg',
      description: 'Monkey D. Luffy, seorang bajak laut muda dengan kekuatan elastis dari buah Gomu Gomu, berlayar bersama kru Topi Jerami untuk menemukan harta legendaris, One Piece, dan menjadi Raja Bajak Laut. Petualangan mereka penuh aksi, persahabatan, dan misteri di lautan luas.',
    );
  }
}
