import 'package:education_system/features/website_homepage/presentation/pages/login/web_login.dart';
import 'package:flutter/material.dart';

import '../../core/error/route_error_page.dart';

class AppRoutes {
  static const home = '/home';
  static const webLogin = '/login';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // E.g Navigator.of(context).pushNamed(AppRoutes.theScreenYouAreGoingTo);
    switch (settings.name) {
      case AppRoutes.webLogin:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const WebLoginPage(),
          settings: settings,
          fullscreenDialog: true,
        );


      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const ErrorPage(),
          settings: settings,
          fullscreenDialog: true,
        );
    }
  }
}