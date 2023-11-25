import 'package:get/get.dart';

import 'package:learning_flutter/controllers/splash/splash_controller.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(SplashController.new);
  }
}
