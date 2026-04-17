import 'package:flutter/material.dart';
import 'package:protfolio/core/data/projects_data.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/portfolio/portfolio_tab_widgets.dart';

class PortfolioTab extends StatelessWidget {
  const PortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    final double bottomSpacing =
        kBottomNavigationBarHeight +
        MediaQuery.viewPaddingOf(context).bottom +
        AppSizes.h24;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(AppSizes.w16),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProfileCard(),
                SizedBox(height: AppSizes.h16),
                const PortfolioHeaderSection(),
                SizedBox(height: AppSizes.h16),
                const WorkExperienceSection(),
                SizedBox(height: AppSizes.h16),
                ...portfolioProjects.map(
                  (project) => ProjectCard(project: project),
                ),
                SizedBox(height: bottomSpacing),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
