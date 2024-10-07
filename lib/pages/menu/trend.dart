import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:apps_getx/widget/trend_item.dart';
import 'package:apps_getx/controller/trend_ctr.dart';

class Trend extends StatelessWidget {
  final TrendController _trendController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 21, 36),
      body: Center(
        child: ListView(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _trendController.isMovie.value ? Colors.black12 : Colors.white10,
                  ),
                  child: Text("Movie", style: TextStyle(color: Colors.white)),
                  onPressed: _trendController.toggleCategory,
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _trendController.isMovie.value ? Colors.white10 : Colors.black12,
                  ),
                  child: Text("Anime", style: TextStyle(color: Colors.white)),
                  onPressed: _trendController.toggleCategory,
                ),
              ],
            ),
            SizedBox(height: 20),
            Obx(() => _trendController.isMovie.value
                ? Column(
                    children: [
                      TrendItem(
                        ranking: "#1",
                        title: "Harry Potter",
                        rating: "9.5/10",
                        imagePath: "assets/images/harry1.jpeg",
                      ),
                      SizedBox(height: 20),
                      TrendItem(
                        ranking: "#2",
                        title: "Home Alone",
                        rating: "9.5/10",
                        imagePath: "assets/images/homealone.jpg",
                      ),
                      SizedBox(height: 20),
                      TrendItem(
                        ranking: "#3",
                        title: "DP X WLF",
                        rating: "9.5/10",
                        imagePath: "assets/images/dp.jpeg",
                      ),
                      SizedBox(height: 20),
                      TrendItem(
                        ranking: "#4",
                        title: "Finding Nemo",
                        rating: "9.5/10",
                        imagePath: "assets/images/nemo.jpeg",
                      ),
                      SizedBox(height: 20),
                      TrendItem(
                        ranking: "#5",
                        title: "Titanic",
                        rating: "9.5/10",
                        imagePath: "assets/images/titanic.jpg",
                      ),
                    ],
                  )
                : Column(
                    children: [
                      TrendItem(
                        ranking: "#1",
                        title: "One Piece",
                        rating: "9.5/10",
                        imagePath: "assets/images/onepiece.jpg",
                      ),
                      SizedBox(height: 20),
                      TrendItem(
                        ranking: "#2",
                        title: "Horimiya",
                        rating: "9.5/10",
                        imagePath: "assets/images/horimiya.jpg",
                      ),
                      SizedBox(height: 20),
                      TrendItem(
                        ranking: "#3",
                        title: "Sword Art Online",
                        rating: "9.5/10",
                        imagePath: "assets/images/sao.jpg",
                      ),
                      SizedBox(height: 20),
                      TrendItem(
                        ranking: "#4",
                        title: "Code Geass",
                        rating: "9.5/10",
                        imagePath: "assets/images/codegeass.jpeg",
                      ),
                      SizedBox(height: 20),
                      TrendItem(
                        ranking : "#5",
                        title: "No Game No Life",
                        rating: "9.5/10",
                        imagePath: "assets/images/ngnl.jpg",
                      ),
                    ],
                  )),
          ],
        ),
      ),
    );
  }
}