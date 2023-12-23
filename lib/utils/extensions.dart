import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:learning_flutter/models/models.dart';

extension NullString on String? {
  bool get isNullOrEmpty => this == null || this!.trim().isEmpty;
}

extension ResponseExtension on ResponseModel {
  T body<T>() => jsonDecode(data)['data'] as T;

  String get message => jsonDecode(data)['data'] as String;
}

extension TextControllerExtension on TextEditingController {
  String get input => text.trim();
}
