import 'package:learning_flutter/services/services.dart';

class HomeRepository {
  const HomeRepository(this._service);
  final HomeService _service;

  Future<bool> logout() => _service.logout();
}
