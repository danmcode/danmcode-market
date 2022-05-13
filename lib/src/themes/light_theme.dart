import 'package:flutter/material.dart';

class LightTheme {
  static const Color danmcodeBlack = Color(0xFF161616);
  static const Color danmcodeGreen = Color(0xFF18aa80);
  static const Color danmcodeGrey = Color(0xFF292929);
  static const Color danmcodeDark = Color(0xFF212529);
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'poppins',
    appBarTheme: const AppBarTheme(
      color: danmcodeGrey,
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: danmcodeGrey,
      elevation: 0,
      unselectedIconTheme: IconThemeData(color: Colors.white),
      unselectedLabelStyle: TextStyle(color: Colors.white),
      selectedIconTheme: IconThemeData(color: danmcodeGreen),
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'poppins',
      ),
      selectedItemColor: danmcodeGreen,
      unselectedItemColor: Colors.white,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
