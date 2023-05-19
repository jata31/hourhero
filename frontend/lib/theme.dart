import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightPrimaryColor = Colors.white;
  static final Color _lightSecondaryColor = Colors.grey.shade100;
  static const Color _lightOnSecondaryColor = Colors.black;
  static final Color _lightTertiaryColor = Colors.teal.shade500;
  static final Color _lightOnPrimaryColor = Colors.grey.shade200;
  static const Color _lightTextColorPrimary = Colors.black;
  static const Color _lightTextColorSecondary = Colors.grey;
  static final Color _lightBackgroundColor = Colors.grey.shade800;
  static final Color _lightPrimaryContainerColor = Colors.grey.shade300;
  static final Color _lightShadowColor = Colors.grey.shade200;
  static const Color _lightCaptionColor = Colors.grey;

  static final Color _darkPrimaryColor = Colors.grey.shade800;
  static final Color _darkSecondaryColor = Colors.grey.shade700;
  static const Color _darkOnSecondaryColor = Colors.white;
  static final Color _darkTertiaryColor = Colors.teal.shade300;
  static final Color _darkOnPrimaryColor = Colors.grey.shade900;
  static const Color _darkTextColorPrimary = Colors.white;
  static const Color _darkTextColorSecondary = Colors.grey;
  static const Color _darkBackgroundColor = Colors.white;
  static final Color _darkPrimaryContainerColor = Colors.grey.shade700;
  static final Color _darkShadowColor = Colors.grey.shade600;
  static const Color _darkCaptionColor = Colors.grey;

  static const TextStyle _lightHeadingText = TextStyle(
      color: _lightTextColorPrimary,
      fontFamily: "Rubik",
      fontWeight: FontWeight.bold);

  static const TextStyle _lightMediumTitleText = TextStyle(
    color: _lightTextColorPrimary,
    fontSize: 20,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
  );

  static final TextStyle _lightLargeTitleText = TextStyle(
    color: _lightTertiaryColor,
    fontSize: 25,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w600,
  );

  static const TextStyle _lightBodyLargeText = TextStyle(
    color: _lightTextColorPrimary,
    fontSize: 14,
    fontFamily: "Rubik",
  );

  static const TextStyle _lightCaptionText = TextStyle(
    color: _lightTextColorSecondary,
    fontSize: 14,
    fontFamily: "Rubik",
  );

  static final TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingText,
    titleMedium: _lightMediumTitleText,
    titleLarge: _lightLargeTitleText,
    headlineSmall: _lightHeadingText,
    bodyLarge: _lightBodyLargeText,
    bodyMedium: _lightCaptionText,
  );

  static final InputDecorationTheme _lightInputDecorationTheme = InputDecorationTheme(
    labelStyle: _lightCaptionText,
    border: const OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _lightBackgroundColor),
    ),
  );

  static const TextStyle _darkHeadingText = TextStyle(
      color: _darkTextColorPrimary,
      fontFamily: "Rubik",
      fontWeight: FontWeight.bold);

  static const TextStyle _darkMediumTitleText = TextStyle(
    color: _darkTextColorPrimary,
    fontSize: 20,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w400,
  );

  static final TextStyle _darkLargeTitleText = TextStyle(
    color: _darkTertiaryColor,
    fontSize: 25,
    fontFamily: "Rubik",
    fontWeight: FontWeight.w600,
  );

  static const TextStyle _darkBodyLargeText = TextStyle(
    color: _darkTextColorPrimary,
    fontSize: 14,
    fontFamily: "Rubik",
  );

  static const TextStyle _darkCaptionText = TextStyle(
    color: _darkTextColorSecondary,
    fontSize: 14,
    fontFamily: "Rubik",
  );

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkHeadingText,
    titleMedium: _darkMediumTitleText,
    titleLarge: _darkLargeTitleText,
    headlineSmall: _darkHeadingText,
    bodyLarge: _darkBodyLargeText,
    bodyMedium: _darkCaptionText,
  );

  static const InputDecorationTheme _darkInputDecorationTheme = InputDecorationTheme(
    labelStyle: _darkCaptionText,
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _darkBackgroundColor),
    ),
  );

  static final ThemeData lightTheme = ThemeData(

    textTheme: _lightTextTheme,
    inputDecorationTheme: _lightInputDecorationTheme,
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightOnPrimaryColor,
      secondary: _lightSecondaryColor,
      tertiary: _lightTertiaryColor,
      background: _lightBackgroundColor,
      primaryContainer: _lightPrimaryContainerColor,
      secondaryContainer: _lightCaptionColor,
      shadow: _lightShadowColor,
      onSecondary: _lightOnSecondaryColor,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    textTheme: _darkTextTheme,
    inputDecorationTheme: _darkInputDecorationTheme,
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      onPrimary: _darkOnPrimaryColor,
      secondary: _darkSecondaryColor,
      tertiary: _darkTertiaryColor,
      background: _darkBackgroundColor,
      primaryContainer: _darkPrimaryContainerColor,
      secondaryContainer: _darkCaptionColor,
      shadow: _darkShadowColor,
      onSecondary: _darkOnSecondaryColor,
    ),
  );
}
