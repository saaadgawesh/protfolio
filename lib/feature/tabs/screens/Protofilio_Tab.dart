import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/core/data/projects_data.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/portfolio/portfolio_tab_widgets.dart';

class PortfolioTab extends StatelessWidget {
  const PortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = ScreenUtil().screenWidth;
    final bool isTablet = screenWidth >= 700;
    final bool isWide = screenWidth >= 1100;
    final double horizontalPadding =
        isWide ? 32.w : (isTablet ? 24.w : 16.w);
    final double contentWidth = (screenWidth - (horizontalPadding * 2)).clamp(
      0.0,
      1200.0,
    );
    final double bottomSpacing =
        kBottomNavigationBarHeight +
        MediaQuery.viewPaddingOf(context).bottom +
        AppSizes.h24;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(horizontalPadding),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileCard(),
                  SizedBox(height: AppSizes.h16),
                  PortfolioHeaderSection(
                    isTablet: isTablet,
                    contentWidth: contentWidth,
                  ),
                  SizedBox(height: AppSizes.h16),
                  const WorkExperienceSection(),
                  SizedBox(height: AppSizes.h16),
                  ...portfolioProjects.map(
                    (project) => ProjectCard(
                      project: project,
                      contentWidth: contentWidth,
                    ),
                  ),
                  SizedBox(height: bottomSpacing),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
