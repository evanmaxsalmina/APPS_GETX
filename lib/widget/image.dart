import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ImageCarousel extends StatelessWidget {
  final List<String> imagePaths;
  final List<String> imageCaptions;
  final List<Widget> routes;

  const ImageCarousel(
      {required this.imagePaths,
      required this.imageCaptions,
      required this.routes});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              
              Get.to(routes[index]);
            },
            child: Container(
              width: 100,
              margin: EdgeInsets.only(right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePaths[index]),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      index < imageCaptions.length ? imageCaptions[index] : '',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
