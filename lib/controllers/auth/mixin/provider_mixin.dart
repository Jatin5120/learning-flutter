part of '../auth_controller.dart';

mixin AuthProviderMixin {
  AuthController get _controller => Get.find();

  Future<void> anonymousLogin() async {
    var isLoggedIn = await _controller._viewModel.anonymousLogin();
    if (isLoggedIn) {
      RouteManagement.goToHome();
    }
  }
}
