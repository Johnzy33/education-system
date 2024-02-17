import 'package:education_system/src/rust/api/features/website_homepage/data/surreal_db/surreal_db_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routes/locator.dart';
import 'config/routes/navigation.dart';
import 'config/routes/routes.dart';
import 'src/rust/api/features/website_homepage/presentation/pages/home/home_page.dart';

void main() async {
  dependenciesInjectorSetup();
  SurrealDBClient().init();
  await SurrealDBClient().signIn();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // TODO:Point this to the root of the homepage
  @override
  Widget build(BuildContext context) {
    TargetPlatform platform = Theme.of(context).platform;
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Education System',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const WebHomePage(),
        navigatorKey: getIt<NavigationService>().navigatorKey,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
