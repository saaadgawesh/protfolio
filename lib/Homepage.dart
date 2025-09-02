import 'package:flutter/material.dart';
import 'package:protfolio/apptheme/appthemCloude.dart';
import 'package:protfolio/tabs/aboutTab.dart';
import 'package:protfolio/tabs/cotacts_tab.dart';
import 'package:protfolio/tabs/protfilioTab.dart';
import 'package:protfolio/tabs/resumeTab.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> tabs = [
    const Abouttab(),
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
