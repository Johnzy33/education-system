import 'package:flutter/material.dart';

class AppColors {
  static Color lightPrimary = Colors.white;
  static Color lightAccent = const Color(0xff06c08a);
  static const black = Color(0xFF191919);
  static const gray = Color(0xFF666666);
  static const darkGray = Color(0xFF979797);
  static const white = Color(0xFFFFFFFF);
  static const greyText = Color(0xFF828282);
  static const green = Color(0xFF006B3A);
  static const descriptionTextColor = Color(0xFFBDBDBD);
  static const red = Color(0xFFC00418);
  static const boldText = Color(0xFF333333);
  static const darkText = Color(0xFF0F1728);
  static const lightGreyText = Color(0xFF667084);
  static const infoBgColor = Color(0x7FEBF0F6);
  static const footerBg = Color(0xFFFEF5ED);
  static const editTextBorder = Color(0xFFF2F2F2);
  static const navyBlue = Color(0xFF002346);
  static const textBlackBold = Color(0xFF232222);
  static const govBackG = Color(0xFFF9FAFB);
  static const border = Color(0x1A000000);
  static const bg = Color(0xFFF3F4F5);
  static const bg2 = Color(0x1AEFEBEB);

  static const facultiesBgColor = Color(0xFFF8F9FB);
  static const facultiesGreyColor = Color(0xFFDEDDD3);
  static const facultiesYellowColor = Color(0xFFFCC400);
  static const facultiesLemonColor = Color(0xFFEC7405);
  static const facultiesRedColor = Color(0xFFE32119);
  static const facultiesMaronColor = Color(0xFFB80229);
  static const facultiesNavyBlueColor = Color(0xFF005EA8);
  static const facultiesSeaBlueColor = Color(0xFF008BD0);
  static const facultiesLeafGreenColor = Color(0xFFA4C400);
  static const facultiesGreenColor = Color(0xFF009932);
  static const facultiesSkyBlueColor = Color(0xFF43B49D);


  static const facultiesGreyText = Color(0xFFC7C9BD);
  static const facultiesYellowText = Color(0xFFE8AC00);
  static const facultiesLemonText = Color(0xFFD75212);
  static const facultiesRedText = Color(0xFFC00418);
  static const facultiesMaronText = Color(0xFF940E15);
  static const facultiesNavyBlueText = Color(0xFF004A8D);
  static const facultiesSeaBlueText = Color(0xFF006FA2);
  static const facultiesLeafGreenText = Color(0xFF70A81D);
  static const facultiesGreenText = Color(0xFF007C30);
  static const facultiesSkyBlueText = Color(0xFF379A87);

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

  static const facultiesColors = [facultiesGreyColor, facultiesYellowColor, facultiesLemonColor, facultiesRedColor, facultiesMaronColor, facultiesNavyBlueColor, facultiesSeaBlueColor, facultiesLeafGreenColor, facultiesGreenColor, facultiesSkyBlueColor];
  static const facultiesTextColors = [facultiesGreyText, facultiesYellowText, facultiesLemonText, facultiesRedText, facultiesMaronText, facultiesNavyBlueText, facultiesSeaBlueText, facultiesLeafGreenText, facultiesGreenText, facultiesSkyBlueText];
}


