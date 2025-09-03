import 'package:flutter/material.dart';
import 'package:lumya/constants/custom_colors.dart';

class CustomTheme {
  // TODO Light Theme
  final ThemeData _customLightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: CustomColor().primery,
    scaffoldBackgroundColor: CustomColor().primery,
    appBarTheme: AppBarTheme(backgroundColor: CustomColor().primery, elevation: 4),

    textTheme: TextTheme(
      // TODO Head Line
      headlineSmall: TextStyle(
        fontSize: 20,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor().secondary,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor().secondary,
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor().secondary,
      ),
      // TODO Body
      bodySmall: TextStyle(
        fontSize: 14,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
      ),
      // TODO Label
      labelSmall: TextStyle(
        fontSize: 14,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        fontSize: 24,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  ThemeData get customLightTheme => _customLightTheme;

  // TODO Dark Theme
  final ThemeData _customDarkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: CustomColor().primery,
    scaffoldBackgroundColor: CustomColor().primery,
    appBarTheme: AppBarTheme(backgroundColor: CustomColor().primery, elevation: 4),

    textTheme: TextTheme(
      // TODO Head Line
      headlineSmall: TextStyle(
        fontSize: 20,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor().secondary,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor().secondary,
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor().secondary,
      ),
      // TODO Body
      bodySmall: TextStyle(
        fontSize: 14,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
      ),
      // TODO Label
      labelSmall: TextStyle(
        fontSize: 14,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        fontSize: 24,
        color: CustomColor().secondary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  ThemeData get customDarkTheme => _customDarkTheme;

}
