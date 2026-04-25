import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_colors.dart';

class Appthem {
  Appthem._();


  static ThemeData get darkTheme {
    return ThemeData(

      brightness: Brightness.dark,
      primaryColor: AppColors.golden,
      scaffoldBackgroundColor: AppColors.darkPrimary,
      cardColor: AppColors.cardDark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.golden,
        secondary: AppColors.goldenAlt,
        surface: AppColors.cardDark,
        onPrimary: AppColors.darkPrimary,
        onSecondary: AppColors.white,
        onSurface: AppColors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkSecondary,
        foregroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.golden),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.golden,
          foregroundColor: AppColors.darkPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.golden),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.cardDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.grayMedium),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.golden),
        ),
      ),
    );
  }
}

class PortfolioTextStyles {
  static const TextStyle heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.golden,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    color: AppColors.white,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    color: AppColors.grayLight,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    color: AppColors.grayMedium,
  );

  static const TextStyle goldenText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.golden,
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 14,
    color: AppColors.blueLink,
    decoration: TextDecoration.underline,
  );
}

class PortfolioDecorations {
  static BoxDecoration get defaultCard => BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      );

  static BoxDecoration get goldenCard => BoxDecoration(
        color: AppColors.golden,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.golden,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      );

  static BoxDecoration get darkGradient => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.darkPrimary, AppColors.darkSecondary],
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      );

  static BoxDecoration get goldenGradient => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.goldenAlt, AppColors.golden],
        ),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      );
}
