import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:learning_flutter/controllers/controllers.dart';
import 'package:learning_flutter/data/data.dart';
import 'package:learning_flutter/firebase_options.dart';
import 'package:learning_flutter/res/res.dart';
import 'package:learning_flutter/utils/utils.dart';

void main() async {
  await _setup();
  runApp(const MyApp());
}

Future<void> _setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  CommonBinding().dependencies();
  Get.put(DeviceConfig()).init();
  Get.lazyPut(SharedPreferencesManager.new);
  await Future.wait([
    AppConfig.init(
      const EnvConfig(
        appTitle: AppConstants.appName,
        appFlavor: AppFlavor.dev,
      ),
    ),
    Get.put<DBWrapper>(DBWrapper()).init(),
  ]);
  Get.put<ApiWrapper>(ApiWrapper(http.Client()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.purple),
          translations: TranslationsFile(),
          getPages: AppPages.pages,
          initialRoute: AppPages.initial,
        ),
      );
}
