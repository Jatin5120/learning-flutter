import 'package:get/get.dart';

import 'package:learning_flutter/data/data.dart';
import 'package:learning_flutter/models/models.dart';
import 'package:learning_flutter/repositories/repositories.dart';
import 'package:learning_flutter/res/res.dart';
import 'package:learning_flutter/utils/utils.dart';

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
