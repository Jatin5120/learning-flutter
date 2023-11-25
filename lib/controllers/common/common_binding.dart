import 'package:get/get.dart';

import '../../repositories/repositories.dart';
import '../../view_models/view_models.dart';
import 'common_controller.dart';

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
