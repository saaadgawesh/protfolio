import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/utils/App_Size.dart';
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
    return Scaffold(
      body: tabs[_CurrentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: PortfolioColors.golden,
        selectedFontSize: AppSizes.sp12,
        unselectedFontSize: AppSizes.sp10,
        iconSize: AppSizes.icon24,
        currentIndex: _CurrentIndex,
        onTap: (value) {
          setState(() {
            _CurrentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            label: 'Resume',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail_outlined),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
