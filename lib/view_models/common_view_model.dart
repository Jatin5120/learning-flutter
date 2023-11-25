import 'package:get/get.dart';

import '../data/data.dart';
import '../models/models.dart';
import '../repositories/repositories.dart';
import '../res/res.dart';
import '../utils/utils.dart';

class CommonViewModel {
  CommonViewModel(this._repository) : _dbWrapper = Get.find<DBWrapper>();

  final CommonRepository _repository;

  final DBWrapper _dbWrapper;

  Future<void> guestLogin() async {
    try {
      var res = await _repository.guestLogin();
      if (res.hasError) {
        return;
      }
      var data = res.body<Data>();
      await Future.wait([
        _dbWrapper.saveValueSecurely(LocalKeys.authToken, data.accessToken!),
        _dbWrapper.saveValueSecurely(
            LocalKeys.refreshToken, data.refreshToken!),
      ]);
    } catch (_, st) {
      AppLog.error(_, st);
    }
  }
}
