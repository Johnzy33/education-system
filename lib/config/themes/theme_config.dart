import 'package:flutter/material.dart';

class AppColors {
  static Color lightPrimary = Colors.white;
  static Color lightAccent = const Color(0xff06c08a);
  static const black = Color(0xFF191919);
  static const gray = Color(0xFF666666);
  static const darkGray = Color(0xFF979797);
  static const white = Color(0xFFFFFFFF);

  static ThemeData lightTheme = ThemeData(
    //backgroundColor: white,
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(
      color: lightPrimary,
      elevation: 0.0,
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    //backgroundColor: Colors.black,
    primaryColor: gray,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: gray,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
  );
}
