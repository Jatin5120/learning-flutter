import 'dart:convert';

import '../models/models.dart';

extension NullString on String? {
  bool get isNullOrEmpty => this == null || this!.trim().isEmpty;
}

extension ResponseExtension on ResponseModel {
  T body<T>() => jsonDecode(data)['data'] as T;

  String get message => jsonDecode(data)['data'] as String;
}
