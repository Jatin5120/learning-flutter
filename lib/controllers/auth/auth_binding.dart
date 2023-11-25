import 'package:get/get.dart';
import 'package:learning_flutter/controllers/controllers.dart';
import 'package:learning_flutter/repositories/repositories.dart';
import 'package:learning_flutter/view_models/view_models.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(
        AuthViewModel(
          AuthRepository(),
        ),
      ),
    );
  }
}
