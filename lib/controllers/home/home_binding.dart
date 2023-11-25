import 'package:get/get.dart';
import 'package:learning_flutter/controllers/home/home_controller.dart';
import 'package:learning_flutter/repositories/repositories.dart';
import 'package:learning_flutter/view_models/view_models.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        HomeViewModel(
          HomeRepository(),
        ),
      ),
    );
  }
}
