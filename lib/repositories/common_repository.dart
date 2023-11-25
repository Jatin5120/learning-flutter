import 'dart:convert';

import 'package:get/get.dart';

import 'package:learning_flutter/data/data.dart';
import 'package:learning_flutter/models/models.dart';
import 'package:learning_flutter/utils/utils.dart';

class CommonRepository {
  final ApiWrapper apiWrapper = Get.find<ApiWrapper>();
  final DeviceConfig deviceConfig = Get.find<DeviceConfig>();

  Future<ResponseModel> guestLogin() async {
    var data = <String, dynamic>{
      'deviceId': deviceConfig.deviceId,
      'deviceMake': deviceConfig.deviceMake,
      'deviceModel': deviceConfig.deviceModel,
      'deviceTypeCode': deviceConfig.deviceTypeCode,
      'deviceOs': deviceConfig.deviceOs,
      'appVersion': AppConfig.appVersion,
      'browserVersion': '',
      'lat': 0,
      'long': 0
    };
    var basicAuth =
        'Basic ${base64Encode(utf8.encode('instacare:admin@instacare'))}';
    var res = await apiWrapper.makeRequest(
      'guestLogin',
      type: RequestType.post,
      headers: {
        'Content-Type': 'application/json',
        'authorization': basicAuth,
      },
      payload: data,
      showLoader: false,
    );
    return res;
  }
}
