import 'package:get/get.dart';
import 'package:resume_builder_flutter/controller/splash_controller.dart';

class GlobalScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
