import 'package:education_system/src/rust/api/features/website_homepage/presentation/pages/login/web_login.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/pages/signup/web_signup.dart';
import 'package:education_system/src/rust/api/features/website_homepage/presentation/widgets/auth.profile.dart';
import 'package:flutter/material.dart';

import '../../core/error/route_error_page.dart';

class AppRoutes {
  static const home = '/home';
  static const webLogin = '/login';
  static const webSignUp = '/signup';
  static const authProfile = '/AuthProfile';
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
      case AppRoutes.webSignUp:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const WebSignUpPage(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.authProfile:
        return MaterialPageRoute<dynamic>(
          builder: (_) => AuthProfile(),
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