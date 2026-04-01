import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/feature/tabs/screens/AboutMe_Tab.dart';
import 'package:protfolio/feature/tabs/screens/Contacts_Tab.dart';
import 'package:protfolio/feature/tabs/screens/Protofilio_Tab.dart';
import 'package:protfolio/feature/tabs/screens/Resume_Tab.dart';

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
  int _CurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_CurrentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: PortfolioColors.golden,

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
