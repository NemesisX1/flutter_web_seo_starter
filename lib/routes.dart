import 'package:flutter_web_seo/pages/home.view.dart';
import 'package:qlevar_router/qlevar_router.dart';

class AppRoutes {
  static List<QRoute> routes = [
    QRoute(
      name: HomeView.routeName,
      path: '/',
      builder: () => const HomeView(),
    ),
  ];
}
