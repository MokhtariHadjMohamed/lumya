import 'package:flutter/material.dart';
import 'custom_colors.dart';

class CustomTheme {
  // TODO Light Theme
  final ThemeData _customLightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: CustomColor.primary,
      secondary: CustomColor.secondary,
      tertiary: CustomColor.tertiary,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 4,
    ),

    textTheme: TextTheme(
      // TODO Head Line
      headlineSmall: TextStyle(
        fontSize: 32,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor.secondary,
      ),
      headlineMedium: TextStyle(
        fontSize: 38,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor.secondary,
      ),
      headlineLarge: TextStyle(
        fontSize: 42,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor.secondary,
      ),
      // TODO Title
      titleLarge: TextStyle(
        fontSize: 28,
        color: CustomColor.secondary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        color: CustomColor.secondary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontSize: 20,
        color: CustomColor.secondary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      // TODO Body
      bodySmall: TextStyle(
        fontSize: 12,
        color: CustomColor.tertiary,
        fontFamily: "Poppins",
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: CustomColor.tertiary,
        fontFamily: "Poppins",
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: CustomColor.tertiary,
        fontFamily: "Poppins",
      ),
      // TODO Label
      labelSmall: TextStyle(
        fontSize: 14,
        color: CustomColor.primary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        color: CustomColor.primary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        fontSize: 24,
        color: CustomColor.primary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  ThemeData get customLightTheme => _customLightTheme;

  // TODO Dark Theme
  final ThemeData _customDarkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: CustomColor.primary,
      secondary: CustomColor.secondary,
      tertiary: CustomColor.tertiary,
    ),
    scaffoldBackgroundColor:  Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 4,
    ),

    textTheme: TextTheme(
      // TODO Head Line
      headlineSmall: TextStyle(
        fontSize: 20,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor.secondary,
      ),
      headlineMedium: TextStyle(
        fontSize: 24,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor.secondary,
      ),
      headlineLarge: TextStyle(
        fontSize: 32,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: CustomColor.secondary,
      ),
      // TODO Body
      bodySmall: TextStyle(
        fontSize: 14,
        color: CustomColor.secondary,
        fontFamily: "Poppins",
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: CustomColor.secondary,
        fontFamily: "Poppins",
      ),
      bodyLarge: TextStyle(
        fontSize: 18,
        color: CustomColor.secondary,
        fontFamily: "Poppins",
      ),
      // TODO Label
      labelSmall: TextStyle(
        fontSize: 14,
        color: CustomColor.primary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        fontSize: 16,
        color: CustomColor.primary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        fontSize: 24,
        color: CustomColor.primary,
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  ThemeData get customDarkTheme => _customDarkTheme;
}
