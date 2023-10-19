import 'package:flutter/material.dart';

import '../../ui/components/route_error_page.dart';

class AppRoutes {
  static const home = '/home';
}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // E.g Navigator.of(context).pushNamed(AppRoutes.theScreenYouAreGoingTo);
    switch (settings.name) {
      // case AppRoutes.home:
      //   return MaterialPageRoute<dynamic>(
      //     builder: (_) => const BottomNavigation(selectedIndex: 0),
      //     settings: settings,
      //     fullscreenDialog: true,
      //   );


      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const ErrorPage(),
          settings: settings,
          fullscreenDialog: true,
        );
    }
  }
}
