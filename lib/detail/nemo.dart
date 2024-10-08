import 'package:apps_getx/widget/movie_detail.dart';
import 'package:flutter/material.dart';

class Nemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      title: 'Finding Nemo',
      imagePath: 'assets/images/nemo.jpeg',
      description: 'Ketika anaknya, Nemo, tersesat di lautan luas, Marlin, seekor ikan badut yang overprotektif, berpetualang bersama Dory, ikan yang pelupa, untuk menemukannya. Perjalanan mereka penuh tantangan, petualangan, dan pelajaran tentang keberanian serta cinta keluarga.',
    );
  }
}
