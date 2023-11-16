import '../../features/website_homepage/data/datasources/local/sharedpreferences.dart';
import '../../config/routes/locator.dart';
import '../../config/routes/navigation.dart';

///Global variables
final NavigationService navigationService = getIt<NavigationService>();
final SharedPreference sharedPreference = SharedPreference();

class AppStrings {
  static String appName = 'Education System';
  static const List<String> facultiesList = ["SUUU", "SF", "MC", "MV", "G", "SPES", "SAA", "ST", "SMLC"];
}

class AppImages {
  static const String appLogo = "assets/images/school_logo.png";
  static const String homeImage = "assets/images/home_image.png";
  static const String searchIcon = "assets/images/ic_search.svg";
  static const String studentsIcon = "assets/images/ic_student.svg";
  static const String deadlinesIcon = "assets/images/ic_deadline.svg";
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
