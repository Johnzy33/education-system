import '../data/cache/sharedpreferences.dart';
import '../services/navigation_service.dart';
import '../services/routes/locator.dart';

///Global variables
final NavigationService navigationService = getIt<NavigationService>();
final SharedPreference sharedPreference = SharedPreference();

class AppStrings {
  static String appName = 'Education System';
}

class AppImages {
  static const String appLogo = "assets/images/delivery_onboarding.svg";
}

class AppFontSizes {
  static double fontSize32 = 32.0;
  static double fontSize30 = 30.0;
  static double fontSize24 = 24.0;
  static double fontSize22 = 22.0;
  static double fontSize20 = 20.0;
  static double fontSize18 = 18.0;
  static double fontSize16 = 16.0;
  static double fontSize14 = 14.0;
  static double fontSize12 = 12.0;
  static double fontSize10 = 10.0;
}