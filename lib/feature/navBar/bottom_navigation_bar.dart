import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
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
    final items = [
      (Icons.info_outline, AppStrings.tabAbout),
      (Icons.description_outlined, AppStrings.tabResume),
      (Icons.work_outline, AppStrings.tabPortfolio),
      (Icons.contact_mail_outlined, AppStrings.tabContact),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final bool useRail = constraints.maxWidth >= 900;

        if (useRail) {
          return Scaffold(
            body: Row(
              children: [
                NavigationRail(
                  selectedIndex: _CurrentIndex,
                  backgroundColor: PortfolioColors.cardDark,
                  labelType:
                      constraints.maxWidth >= 1200
                          ? NavigationRailLabelType.none
                          : NavigationRailLabelType.selected,
                  selectedIconTheme: const IconThemeData(
                    color: PortfolioColors.golden,
                  ),
                  selectedLabelTextStyle: TextStyle(
                    color: PortfolioColors.golden,
                    fontSize: AppSizes.sp12,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelTextStyle: TextStyle(
                    color: Colors.white70,
                    fontSize: AppSizes.sp11,
                  ),
                  onDestinationSelected: (value) {
                    setState(() {
                      _CurrentIndex = value;
                    });
                  },
                  destinations:
                      items
                          .map(
                            (item) => NavigationRailDestination(
                              icon: Icon(item.$1),
                              selectedIcon: Icon(item.$1),
                              label: Text(item.$2),
                            ),
                          )
                          .toList(),
                ),
                const VerticalDivider(width: 1),
                Expanded(child: tabs[_CurrentIndex]),
              ],
            ),
          );
        }

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
            items:
                items
                    .map(
                      (item) => BottomNavigationBarItem(
                        icon: Icon(item.$1),
                        label: item.$2,
                      ),
                    )
                    .toList(),
          ),
        );
      },
    );
  }
}
