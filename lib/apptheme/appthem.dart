import 'package:flutter/material.dart';

class appcolors {
  static const blackcolor = Color(0xff000000);
  static const whitecolor = Color(0xffffffff);
  static const goldcolor = Color(0xffffd54f);

  static const ramadycolor = Color(0xFFB0B0B0);
  static const textparagraphcolor = Color(0xFFE0E0E0);

  static ThemeData appthem = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: blackcolor, // الخلفية الداكنة
    primaryColor: goldcolor, // اللون الأصفر الذهبي
    hintColor: ramadycolor, // النصوص الثانوية

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: textparagraphcolor), // نصوص الباراجراف
      bodyMedium: TextStyle(color: textparagraphcolor),
      titleLarge: TextStyle(
        color: Color(0xFFFFFFFF), // العناوين
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(color: goldcolor), // نصوص مميزة مثل About
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: blackcolor,
      titleTextStyle: TextStyle(
        color: whitecolor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: goldcolor),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: appcolors.ramadycolor,
      selectedItemColor: appcolors.goldcolor,

      unselectedItemColor: appcolors.textparagraphcolor,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
  );
}
