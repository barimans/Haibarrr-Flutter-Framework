import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appName/constants/env.dart';
import 'package:appName/feature/splash/binding/splash_binding.dart';
import 'package:appName/route/route.pages.dart';
import 'package:appName/services/api_client.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
ApiClient myApiClient = ApiClient();

class MyApp extends StatelessWidget {
  final Env env;
  const MyApp({super.key, required this.env});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Getex Cuy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      getPages: RoutePages.pages,
      initialBinding: SplashBinding(),
      debugShowCheckedModeBanner: false,
    );
  }
}