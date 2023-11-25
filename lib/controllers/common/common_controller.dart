import 'package:get/get.dart';

import '../../view_models/view_models.dart';

class CommonController extends GetxController {
  CommonController(this._viewModel);

  final CommonViewModel _viewModel;

  Future<void> guestLogin() async => _viewModel.guestLogin();
}
