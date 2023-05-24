import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder_flutter/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return const SafeArea(
            child: Center(
              child: FlutterLogo(),
            ),
          );
        });
  }
}
