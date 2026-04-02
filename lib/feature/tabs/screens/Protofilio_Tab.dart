import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/data/projects_data.dart';
import 'package:protfolio/feature/tabs/widget/Profile_card.dart';
import 'package:protfolio/feature/tabs/widget/project_card.dart';

class PortfolioTab extends StatelessWidget {
  const PortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final bool isDesktop = constraints.maxWidth >= 1200;
            final bool isTablet = constraints.maxWidth >= 700;
            final double horizontalPadding =
                isDesktop ? AppSizes.w32 : (isTablet ? AppSizes.w24 : AppSizes.w16);

            return SingleChildScrollView(
              padding: EdgeInsets.all(horizontalPadding),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ProfileCard(),
                      SizedBox(height: AppSizes.h16),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(
                          isTablet ? AppSizes.r20 : AppSizes.r18,
                        ),
                        decoration: BoxDecoration(
                          color: PortfolioColors.cardDark,
                          borderRadius: BorderRadius.circular(AppSizes.r18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.portfolioHeaderTitle,
                              style: Theme.of(
                                context,
                              ).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                fontSize: AppSizes.sp22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: AppSizes.h10),
                            Text(
                              AppStrings.portfolioHeaderDescription,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.copyWith(
                                color: PortfolioColors.grayLighter,
                                fontSize: AppSizes.sp14,
                                height: 1.6,
                              ),
                            ),
                            SizedBox(height: AppSizes.h16),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: _buildStatCard(
                                    title: AppStrings.statsProjects,
                                    value: '${portfolioProjects.length}',
                                    icon: Icons.folder_open,
                                  ),
                                ),
                                SizedBox(width: AppSizes.w12),
                                Expanded(
                                  child: _buildStatCard(
                                    title: AppStrings.statsCategories,
                                    value:
                                        '${portfolioProjects.map((project) => project.category).toSet().length}',
                                    icon: Icons.dashboard_customize,
                                  ),
                                ),
                                SizedBox(width: AppSizes.w12),
                                Expanded(
                                  child: _buildStatCard(
                                    title: AppStrings.statsMainStack,
                                    value: AppStrings.statsMainStackValue,
                                    icon: Icons.flutter_dash,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: AppSizes.h16),
                      ...portfolioProjects.map(
                        (project) => ProjectCard(project: project),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.r14),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDarker,
        borderRadius: BorderRadius.circular(AppSizes.r16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: PortfolioColors.golden, size: AppSizes.icon24),
          SizedBox(height: AppSizes.h12),
          Text(
            value,
            maxLines: 1,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSizes.sp18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppSizes.h6),
          Text(
            title,
            style: TextStyle(
              color: PortfolioColors.grayLighter,
              fontSize: AppSizes.sp12,
            ),
          ),
        ],
      ),
    );
  }
}
