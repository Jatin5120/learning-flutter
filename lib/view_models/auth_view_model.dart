import 'package:learning_flutter/models/models.dart';
import 'package:learning_flutter/repositories/repositories.dart';
import 'package:learning_flutter/utils/utils.dart';

class AuthViewModel {
  const AuthViewModel(this._repository);

  final AuthRepository _repository;

  Future<void> login(UserModel user) async {
    try {
      await _repository.login(user);
    } catch (e, st) {
      AppLog.error(e, st);
    }
  }

  Future<void> signup(UserModel user) async {
    try {
      await _repository.signup(user);
    } catch (e, st) {
      AppLog.error(e, st);
    }
  }
}
