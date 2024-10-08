import 'package:apps_getx/widget/movie_detail.dart';
import 'package:flutter/material.dart';

class Deadpool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      title: 'DeadPool',
      imagePath: 'assets/images/dp.jpeg',
      description: 'Dua anti-hero paling ikonik, Deadpool dan Wolverine, terjebak dalam petualangan penuh aksi dan humor gelap. Dengan Deadpool yang kocak dan tidak bisa dibunuh, serta Wolverine yang tangguh dengan kekuatan penyembuhannya, keduanya bekerja sama, meskipun dengan cara yang tak terduga, untuk menghadapi ancaman besar. Pertarungan sengit, dialog tajam, dan kekacauan yang menghibur menanti!',
    );
  }
}
