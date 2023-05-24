import 'package:get/get.dart';
import 'package:resume_builder_flutter/screen/home_screen.dart';
import 'package:resume_builder_flutter/screen/splash_screen.dart';
import 'global_screen_bindings.dart';
import 'route_names.dart';

class RouteGenerator {
  static List<GetPage<dynamic>> generate() {
    return <GetPage<dynamic>>[
      GetPage(
        name: RouteNames.kSplashScreenRoute,
        page: () => const SplashScreen(),
        binding: GlobalScreenBindings(),
      ),
      GetPage(
        name: RouteNames.kHomeScreenRoute,
        page: () => const HomeScreen(),
        binding: GlobalScreenBindings(),
      ),
    ];
  }
}
