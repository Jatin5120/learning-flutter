import 'package:flutter/material.dart';

import 'package:learning_flutter/utils/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String route = AppRoutes.home;

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child: Text('Home View'),
        ),
      );
}
