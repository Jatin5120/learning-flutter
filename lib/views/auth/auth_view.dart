import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  static const String route = AppRoutes.auth;

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child: Text('Auth View'),
        ),
      );
}
