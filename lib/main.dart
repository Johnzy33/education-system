import 'package:flutter/material.dart';
import 'config/routes/locator.dart';
import 'config/routes/navigation.dart';
import 'config/routes/routes.dart';
import 'package:education_system/src/rust/frb_generated.dart';
import 'src/rust/api/features/website_homepage/presentation/pages/home/home_page.dart';

void main() {
  dependenciesInjectorSetup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // TODO:Point this to the root of the homepage
  @override
  Widget build(BuildContext context) {
    TargetPlatform platform = Theme.of(context).platform;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Education System',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const WebHomePage(),
      navigatorKey: getIt<NavigationService>().navigatorKey,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
