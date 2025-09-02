import 'package:flutter/material.dart';

// ========================================
// Flutter Colors - Husam Portfolio Theme
// ========================================

class PortfolioColors {
  // منع إنشاء instance من الكلاس

  // الألوان الأساسية
  static const Color darkPrimary = Color(0xFF1A1A1A);
  static const Color darkSecondary = Color(0xFF2D2D2D);
  static const Color cardDark = Color(0xFF374151);
  static const Color cardDarker = Color(0xFF4B5563);

  // ألوان النصوص
  static const Color white = Color(0xFFFFFFFF);
  static const Color golden = Color(0xFFFBBF24);
  static const Color goldenAlt = Color(0xFFF59E0B);
  static const Color grayLight = Color(0xFF9CA3AF);
  static const Color grayLighter = Color(0xFFD1D5DB);
  static const Color grayMedium = Color(0xFF6B7280);

  // ألوان إضافية
  static const Color blueLink = Color(0xFF3B82F6);
  static const Color greenActive = Color(0xFF10B981);
  static const Color backgroundLight = Color(0xFFF3F4F6);

  // ========================================
  // Portfolio Theme
  // ========================================

  static ThemeData get darkTheme {
    return ThemeData(
      // الألوان العامة
      brightness: Brightness.dark,
      primaryColor: PortfolioColors.golden,
      scaffoldBackgroundColor: PortfolioColors.darkPrimary,
      cardColor: PortfolioColors.cardDark,

      // ColorScheme
      colorScheme: const ColorScheme.dark(
        primary: PortfolioColors.golden,
        secondary: PortfolioColors.goldenAlt,
        surface: PortfolioColors.cardDark,
        background: PortfolioColors.darkPrimary,
        onPrimary: PortfolioColors.darkPrimary,
        onSecondary: PortfolioColors.white,
        onSurface: PortfolioColors.white,
        onBackground: PortfolioColors.white,
      ),

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: PortfolioColors.darkSecondary,
        foregroundColor: PortfolioColors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: PortfolioColors.golden),
      ),

      // Card Theme
      cardTheme: CardTheme(
        color: PortfolioColors.cardDark,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // ElevatedButton Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: PortfolioColors.golden,
          foregroundColor: PortfolioColors.darkPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),

      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: PortfolioColors.golden),
      ),

      // Input Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: PortfolioColors.cardDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: PortfolioColors.grayMedium),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: PortfolioColors.golden),
        ),
      ),
    );
  }
}

// ========================================
// Text Styles
// ========================================

class PortfolioTextStyles {
  // العناوين
  static const TextStyle heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: PortfolioColors.white,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: PortfolioColors.golden,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: PortfolioColors.white,
  );

  // النصوص العادية
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    color: PortfolioColors.white,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    color: PortfolioColors.grayLight,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    color: PortfolioColors.grayMedium,
  );

  // نصوص مخصصة
  static const TextStyle goldenText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: PortfolioColors.golden,
  );

  static const TextStyle linkText = TextStyle(
    fontSize: 14,
    color: PortfolioColors.blueLink,
    decoration: TextDecoration.underline,
  );
}

// ========================================
// Container Decorations
// ========================================

class PortfolioDecorations {
  // Card عادي
  static BoxDecoration get defaultCard => BoxDecoration(
    color: PortfolioColors.cardDark,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        blurRadius: 8,
        offset: const Offset(0, 4),
      ),
    ],
  );

  // Card ذهبي
  static BoxDecoration get goldenCard => BoxDecoration(
    color: PortfolioColors.golden,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
        color: PortfolioColors.golden.withOpacity(0.3),
        blurRadius: 8,
        offset: const Offset(0, 4),
      ),
    ],
  );

  // Gradient داكن
  static BoxDecoration get darkGradient => const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [PortfolioColors.darkPrimary, PortfolioColors.darkSecondary],
    ),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  // Gradient ذهبي
  static BoxDecoration get goldenGradient => const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [PortfolioColors.goldenAlt, PortfolioColors.golden],
    ),
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );
}
