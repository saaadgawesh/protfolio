import 'package:flutter/material.dart';
import 'package:protfolio/Homepage.dart';
import 'package:protfolio/apptheme/appthemCloude.dart';
import 'package:protfolio/tabs/widget/pdf.dart';

void main() {
  runApp(Protfolioapp());
}

class Protfolioapp extends StatelessWidget {
  const Protfolioapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      theme: PortfolioColors.darkTheme,
    );
  }
}
