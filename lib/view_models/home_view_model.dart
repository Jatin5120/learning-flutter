import 'package:learning_flutter/repositories/repositories.dart';

class HomeViewModel {
  const HomeViewModel(this._repository);
  final HomeRepository _repository;

  Future<bool> logout() => _repository.logout();
}
