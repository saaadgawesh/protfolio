import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/feature/Nav_Bar.dart';

class Protfolioapp extends StatelessWidget {
  const Protfolioapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: NavBar(),
          theme: PortfolioColors.darkTheme,
        ),
      ),
    );
  }
}
