import 'package:get/get.dart';

class Validators {
  const Validators._();

  static String? emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return '*Required';
    }
    if (!value.isEmail) {
      return 'Invalid Email';
    }
    return null;
  }

  static String? nameValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return '*Required';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return '*Required';
    }
    return null;
  }
}
