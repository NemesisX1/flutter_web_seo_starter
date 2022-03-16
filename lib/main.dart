import 'package:flutter/material.dart';
import 'package:flutter_web_seo/pages/home.view.dart';
import 'package:flutter_web_seo/routes.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:seo_renderer/helpers/robot_detector_vm.dart';

void main() {
  QR.setUrlStrategy();
  runApp(
    const RobotDetector(
      debug: true,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: const QRouteInformationParser(),
      routerDelegate: QRouterDelegate(AppRoutes.routes),
      debugShowCheckedModeBanner: false,
      title: 'flutter_web_seo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Colors.orange,
        ),
        appBarTheme: AppBarTheme(elevation: 0),
      ),
    );
  }
}
