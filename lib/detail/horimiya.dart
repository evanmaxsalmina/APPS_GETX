import 'package:apps_getx/widget/movie_detail.dart';
import 'package:flutter/material.dart';

class Horimiya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MovieDetail(
      title: 'Horimiya',
      imagePath: 'assets/images/horimiya.jpg',
      description: 'Kyoko Hori, gadis populer, dan Izumi Miyamura, siswa pendiam, menyembunyikan sisi lain dari diri mereka di luar sekolah. Saat keduanya mulai saling mengenal, hubungan unik yang tumbuh di antara mereka menghadirkan kisah romansa manis dan hangat.',
    );
  }
}
