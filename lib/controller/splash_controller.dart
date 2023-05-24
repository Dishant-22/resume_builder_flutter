import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder_flutter/route_management/route_names.dart';


class SplashController extends GetxController {
  int _seconds = 0;

  @override
  void onInit() {
    super.onInit();
    _startTimer();
  }

  @override
  void onReady() {
    if (kDebugMode) {
      print("OnReady");
    }
    super.onReady();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _seconds += 1;
      if (kDebugMode) {
        print(_seconds);
      }
      if (_seconds == 3) {
        timer.cancel();
        Get.offNamedUntil(RouteNames.kHomeScreenRoute, (route) => false);
      }
    });
  }
}
