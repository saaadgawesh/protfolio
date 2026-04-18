import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_colors.dart';
import 'package:protfolio/core/constants/app_string.dart';

import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/tabs/screens/aboutme_tab.dart';
import 'package:protfolio/feature/tabs/screens/contacts_tab.dart';
import 'package:protfolio/feature/tabs/screens/protofilio_tab.dart';
import 'package:protfolio/feature/tabs/screens/resume_tab.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final List<Widget> tabs = [
    const AboutTab(),
    const Resumetab(),
    const PortfolioTab(),
    const Contacttab(),
  ];

  int _CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final items = [
      (Icons.info_outline, AppStrings.tabAbout),
      (Icons.description_outlined, AppStrings.tabResume),
      (Icons.work_outline, AppStrings.tabPortfolio),
      (Icons.contact_mail_outlined, AppStrings.tabContact),
    ];

    return Scaffold(
      body: tabs[_CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.cardDark,
        selectedItemColor: AppColors.golden,
        unselectedItemColor: Colors.white70,
        selectedFontSize: AppSizes.sp12,
        unselectedFontSize: AppSizes.sp10,
        iconSize: AppSizes.icon24,
        showUnselectedLabels: true,
        currentIndex: _CurrentIndex,
        onTap: (value) {
          setState(() {
            _CurrentIndex = value;
          });
        },
        items: items
            .map(
              (item) => BottomNavigationBarItem(
                icon: Icon(item.$1),
                label: item.$2,
              ),
            )
            .toList(),
      ),
    );
  }
}
