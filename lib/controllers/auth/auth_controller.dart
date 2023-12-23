import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/models/models.dart';
import 'package:learning_flutter/utils/utils.dart';
import 'package:learning_flutter/view_models/view_models.dart';

class AuthController extends GetxController {
  AuthController(this._viewModel);

  final AuthViewModel _viewModel;

  // ---------------- Variables ---------

  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();

  var loginFormKey = GlobalKey<FormState>();

  // ---------------- Functions -----------

  void login() async {
    if (!loginFormKey.currentState!.validate()) {
      return;
    }
    var user = UserModel(
      name: nameController.input,
      email: emailController.input,
      password: passwordController.input,
    );
    await _viewModel.login(user);
  }

  void signup() async {
    if (!loginFormKey.currentState!.validate()) {
      return;
    }
    var user = UserModel(
      name: nameController.input,
      email: emailController.input,
      password: passwordController.input,
    );
    await _viewModel.signup(user);
  }
}
