import 'package:flutter/material.dart';
import 'package:learning_flutter/models/models.dart';
import 'package:learning_flutter/res/res.dart';
import 'package:learning_flutter/services/services.dart';
import 'package:learning_flutter/utils/utils.dart';
import 'package:learning_flutter/widgets/widgets.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  static const String route = AppRoutes.auth;

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  late TextEditingController emailController;
  late TextEditingController nameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: Dimens.edgeInsets16,
            child: Column(
              children: [
                const Text('Auth View'),
                InputField(
                  controller: emailController,
                  label: 'Email',
                ),
                InputField(
                  controller: nameController,
                  label: 'Name',
                ),
                InputField(
                  controller: passwordController,
                  label: 'Password',
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () => AuthService.instance.login(
                    UserModel(
                      name: nameController.text.trim(),
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    ),
                  ),
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        ),
      );
}
