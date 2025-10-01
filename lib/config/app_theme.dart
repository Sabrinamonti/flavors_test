import 'package:flutter/material.dart';

class AppTheme {
  final Color primaryColor;
  final Color secondaryColor;
  final Color tertiaryColor;
  final String logo;
  final String titleFont;
  final String bodyFont;

  AppTheme({
    required this.primaryColor,
    required this.secondaryColor,
    required this.tertiaryColor,
    required this.logo,
    required this.titleFont,
    required this.bodyFont,
  });

  ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: primaryColor,
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          fontFamily: titleFont,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          fontFamily: bodyFont,
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      primaryColor: primaryColor,
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          fontFamily: titleFont,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyMedium: TextStyle(
          fontFamily: bodyFont,
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
