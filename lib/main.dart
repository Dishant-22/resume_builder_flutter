import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:resume_builder_flutter/route_management/global_screen_bindings.dart';
import 'package:resume_builder_flutter/route_management/route_generator.dart';
import 'package:resume_builder_flutter/route_management/route_names.dart';
import 'package:resume_builder_flutter/screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Zexal',
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialBinding: GlobalScreenBindings(),
      getPages: RouteGenerator.generate(),
      initialRoute: RouteNames.kSplashScreenRoute,
      home: const SplashScreen(),
    );
  }
}
