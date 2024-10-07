import 'package:get/get.dart';

class TrendController extends GetxController {
  var isMovie = true.obs;

  void toggleCategory() {
    isMovie.value = !isMovie.value;
  }
}