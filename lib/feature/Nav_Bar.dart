import 'package:flutter/material.dart';
import 'package:protfolio/core/Appthem.dart';
import 'package:protfolio/feature/tabs/screens/aboutTab.dart';
import 'package:protfolio/feature/tabs/screens/cotacts_tab.dart';
import 'package:protfolio/feature/tabs/screens/protfilioTab.dart';
import 'package:protfolio/feature/tabs/screens/resumeTab.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> tabs = [
    const AboutTab(),
    const Resumetab(),
    const PortfolioTab(),
    const Contacttab(),
  ];
  int index1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[index1],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: PortfolioColors.golden,

        currentIndex: index1,
        onTap: (value) {
          setState(() {
            index1 = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'about',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            label: 'resume',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail_outlined),
            label: 'contact',
          ),
        ],
      ),
    );
  }
}
