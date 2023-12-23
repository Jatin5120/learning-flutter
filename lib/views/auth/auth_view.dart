import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/controllers/controllers.dart';
import 'package:learning_flutter/res/res.dart';
import 'package:learning_flutter/utils/utils.dart';
import 'package:learning_flutter/widgets/widgets.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  static const String route = AppRoutes.auth;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: Dimens.edgeInsets16,
            child: GetBuilder<AuthController>(
              builder: (controller) => Form(
                key: controller.loginFormKey,
                child: Column(
                  children: [
                    const Text('Auth View'),
                    InputField(
                      controller: controller.emailController,
                      label: 'Email',
                      validator: Validators.emailValidator,
                    ),
                    InputField(
                      controller: controller.nameController,
                      label: 'Name',
                      validator: Validators.nameValidator,
                    ),
                    InputField(
                      controller: controller.passwordController,
                      label: 'Password',
                      validator: Validators.passwordValidator,
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: controller.signup,
                      child: const Text('Sign In'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
