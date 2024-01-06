import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/controllers/controllers.dart';
import 'package:learning_flutter/utils/utils.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  static const String route = AppRoutes.splash;

  @override
  Widget build(BuildContext context) => GetBuilder<SplashController>(
        builder: (_) => const Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(),
                SizedBox(height: 30),
                Text('Flutter'),
              ],
            ),
          ),
        ),
      );
}
