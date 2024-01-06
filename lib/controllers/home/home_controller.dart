import 'package:get/get.dart';
import 'package:learning_flutter/utils/utils.dart';

import 'package:learning_flutter/view_models/view_models.dart';

class HomeController extends GetxController {
  HomeController(this._viewModel);

  final HomeViewModel _viewModel;

  Future<void> logout() async {
    var isLoggedOut = await _viewModel.logout();
    if (isLoggedOut) {
      RouteManagement.goToSignIn();
    }
  }
}
