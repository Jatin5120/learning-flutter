import 'package:learning_flutter/models/models.dart';
import 'package:learning_flutter/services/services.dart';

class AuthRepository {
  const AuthRepository(this._service);
  final AuthService _service;

  Future<bool> anonymousLogin() => _service.anonymousLogin();

  Future<void> login(UserModel user) => _service.login(user);

  Future<void> signup(UserModel user) => _service.signup(user);
}
