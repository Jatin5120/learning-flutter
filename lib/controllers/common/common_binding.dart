import 'package:get/get.dart';
import 'package:learning_flutter/controllers/common/common_controller.dart';
import 'package:learning_flutter/repositories/repositories.dart';
import 'package:learning_flutter/view_models/view_models.dart';

class CommonBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommonController>(
      () => CommonController(
        CommonViewModel(
          CommonRepository(),
        ),
      ),
    );
  }
}
