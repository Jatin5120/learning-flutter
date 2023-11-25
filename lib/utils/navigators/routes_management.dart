import 'package:get/get.dart';

import 'package:learning_flutter/utils/navigators/app_pages.dart';

abstract class RouteManagement {
  /// Go to the SignIn Screen
  static void goToSignIn() {
    Get.offAllNamed<void>(
      AppRoutes.auth,
    );
  }

  /// Go to the Home Screen
  static void goToHome() {
    Get.offAllNamed<void>(
      AppRoutes.home,
    );
  }
}
