import 'package:get/get.dart';

import '../pages/home/home_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    // Get.lazyPut<LoginController>(() => LoginController());
  }
}
