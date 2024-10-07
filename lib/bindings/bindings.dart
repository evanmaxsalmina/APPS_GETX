import 'package:get/get.dart';
import 'package:apps_getx/controller/login_ctr.dart';
import 'package:apps_getx/controller/home_ctr.dart';
import 'package:apps_getx/controller/trend_ctr.dart';
import 'package:apps_getx/controller/profile_ctr.dart';
import 'package:apps_getx/controller/category_ctr.dart';


class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => TrendController());
    Get.lazyPut(() => CategoriesController());
    Get.lazyPut(() => ProfileController());
  }
}