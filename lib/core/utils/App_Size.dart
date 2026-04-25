import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';

/// App sizes powered by ScreenUtil.
/// Use values from this file instead of hardcoded dimensions.
class AppSizes {
  AppSizes._();

  static const double _designWidth = 360;
  static const double _designHeight = 690;

  static double _scaledWidth(
    double value, {
    double minScale = 0.9,
    double maxScale = 1.35,
  }) {
    final scale = (ScreenUtil().screenWidth / _designWidth).clamp(
      minScale,
      maxScale,
    );
    return value * scale;
  }

  static double _scaledHeight(
    double value, {
    double minScale = 0.9,
    double maxScale = 1.2,
  }) {
    final scale = (ScreenUtil().screenHeight / _designHeight).clamp(
      minScale,
      maxScale,
    );
    return value * scale;
  }

  static double _scaledRadius(double value) {
    final widthScale = (ScreenUtil().screenWidth / _designWidth).clamp(
      0.95,
      1.25,
    );
    final heightScale = (ScreenUtil().screenHeight / _designHeight).clamp(
      0.95,
      1.15,
    );
    return value * math.min(widthScale, heightScale);
  }

  static double _scaledFont(double value) {
    final widthScale = (ScreenUtil().screenWidth / _designWidth).clamp(
      0.95,
      1.18,
    );
    return value * widthScale;
  }

  // Width
  static double get w4 => _scaledWidth(4);
  static double get w6 => _scaledWidth(6);
  static double get w8 => _scaledWidth(8);
  static double get w10 => _scaledWidth(10);
  static double get w12 => _scaledWidth(12);
  static double get w16 => _scaledWidth(16);
  static double get w20 => _scaledWidth(20);
  static double get w24 => _scaledWidth(24);
  static double get w30 => _scaledWidth(30);
  static double get w32 => _scaledWidth(32);
  static double get w48 => _scaledWidth(48);
  static double get w64 => _scaledWidth(64);
  static double get w72 => _scaledWidth(72);
  static double get w77 => _scaledWidth(77);
  static double get w84 => _scaledWidth(84);
  static double get w90 => _scaledWidth(90);
  static double get w100 => _scaledWidth(100);
  static double get w120 => _scaledWidth(120);
  static double get w130 => _scaledWidth(130);
  static double get w150 => _scaledWidth(150);
  static double get w160 => _scaledWidth(160);
  static double get w200 => _scaledWidth(200);
  static double get w250 => _scaledWidth(250);
  static double get w300 => _scaledWidth(300);

  // Height
  static double get h3 => _scaledHeight(3);
  static double get h4 => _scaledHeight(4);
  static double get h6 => _scaledHeight(6);
  static double get h8 => _scaledHeight(8);
  static double get h10 => _scaledHeight(10);
  static double get h12 => _scaledHeight(12);
  static double get h14 => _scaledHeight(14);
  static double get h15 => _scaledHeight(15);
  static double get h16 => _scaledHeight(16);
  static double get h18 => _scaledHeight(18);
  static double get h20 => _scaledHeight(20);
  static double get h24 => _scaledHeight(24);
  static double get h32 => _scaledHeight(32);
  static double get h48 => _scaledHeight(48);
  static double get h64 => _scaledHeight(64);
  static double get h80 => _scaledHeight(80);
  static double get h84 => _scaledHeight(84);
  static double get h90 => _scaledHeight(90);
  static double get h100 => _scaledHeight(100);
  static double get h150 => _scaledHeight(150);
  static double get h180 => _scaledHeight(180);

  // Radius
  static double get r4 => _scaledRadius(4);
  static double get r5 => _scaledRadius(5);
  static double get r8 => _scaledRadius(8);
  static double get r12 => _scaledRadius(12);
  static double get r14 => _scaledRadius(14);
  static double get r15 => _scaledRadius(15);
  static double get r16 => _scaledRadius(16);
  static double get r18 => _scaledRadius(18);
  static double get r20 => _scaledRadius(20);
  static double get r24 => _scaledRadius(24);

  // Font sizes
  static double get sp10 => _scaledFont(10);
  static double get sp11 => _scaledFont(11);
  static double get sp12 => _scaledFont(12);
  static double get sp13 => _scaledFont(13);
  static double get sp14 => _scaledFont(14);
  static double get sp16 => _scaledFont(16);
  static double get sp18 => _scaledFont(18);
  static double get sp20 => _scaledFont(20);
  static double get sp22 => _scaledFont(22);
  static double get sp24 => _scaledFont(24);

  // Icon sizes
  static double get icon16 => _scaledFont(16);
  static double get icon20 => _scaledFont(20);
  static double get icon24 => _scaledFont(24);
  static double get icon32 => _scaledFont(32);
  static double get icon42 => _scaledFont(42);
}
