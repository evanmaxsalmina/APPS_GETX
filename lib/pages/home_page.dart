import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apps_getx/controller/bottom_nav_ctr.dart';
import 'package:apps_getx/pages/menu/categories.dart';
import 'package:apps_getx/pages/menu/home.dart';
import 'package:apps_getx/pages/menu/profile.dart';
import 'package:apps_getx/pages/menu/trend.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavCtr bottomNavCtr = Get.put(BottomNavCtr());

    final List<Widget> menus = [Home(), Trend(), Categories(), Profile()];

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavCtr.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavCtr.selectedIndex.value,
          onTap: bottomNavCtr.changeIndexMenu,
          backgroundColor: Color.fromARGB(255, 28, 21, 36),
          type: BottomNavigationBarType.fixed,
          elevation: 10, 
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 25),
          selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 1.2),
          unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 12, letterSpacing: 1.0),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_fire_department), label: "Trends"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Category"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined), label: "Profile"),
          ],
        ),
      );
    });
  }
}
