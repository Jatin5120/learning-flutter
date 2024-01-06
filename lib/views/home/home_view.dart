import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/controllers/controllers.dart';
import 'package:learning_flutter/utils/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String route = AppRoutes.home;

  @override
  Widget build(BuildContext context) => GetBuilder<HomeController>(
        builder: (controller) => Scaffold(
          appBar: AppBar(
            title: const Text('Home View'),
            actions: [
              IconButton(
                onPressed: controller.logout,
                icon: const Icon(
                  Icons.logout_rounded,
                ),
              ),
            ],
          ),
          body: const Center(
            child: Text('Home View'),
          ),
        ),
      );
}
