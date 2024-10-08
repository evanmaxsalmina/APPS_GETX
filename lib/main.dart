import 'package:apps_getx/pages/menu/favourite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apps_getx/pages/home_page.dart';
import 'package:apps_getx/pages/login_page.dart';
import 'package:apps_getx/pages/menu/trend.dart';
import 'package:apps_getx/pages/menu/categories.dart';
import 'package:apps_getx/pages/menu/profile.dart';
import 'package:apps_getx/bindings/bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => LoginPage(),
          binding: AppBinding(),
        ),
        GetPage(
          name: '/homepage',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/trend',
          page: () => Trend(),
        ),
        GetPage(
          name: '/categories',
          page: () => Categories(),
        ),
        GetPage(
          name: '/profile',
          page: () => Profile(),
        ),
        GetPage(
          name: '/favourite',
          page: () => Favourite(),
        ),
      ],
    );
  }
}