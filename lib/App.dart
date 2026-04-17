import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';

import 'package:protfolio/feature/navBar/bottom_navigation_bar.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
      theme: AppColors.darkTheme,
    );
  }
}
