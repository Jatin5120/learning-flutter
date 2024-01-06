import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/controllers/controllers.dart';
import 'package:learning_flutter/res/res.dart';
import 'package:learning_flutter/utils/utils.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  static const String route = AppRoutes.auth;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: Dimens.edgeInsets16,
            child: GetBuilder<AuthController>(
              builder: (controller) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: controller.anonymousLogin,
                      child: const Text(
                        'Login Anonymously',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
