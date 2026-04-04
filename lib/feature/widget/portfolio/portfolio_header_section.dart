import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/tabs/data/projects_data.dart';
import 'package:protfolio/feature/widget/portfolio/portfolio_stat_card.dart';

class PortfolioHeaderSection extends StatelessWidget {
  const PortfolioHeaderSection({super.key, required this.isTablet});

  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double itemWidth =
            constraints.maxWidth >= 980
                ? (constraints.maxWidth - (AppSizes.w12 * 2)) / 3
                : constraints.maxWidth >= 620
                ? (constraints.maxWidth - AppSizes.w12) / 2
                : constraints.maxWidth;

        return Container(
          width: double.infinity,
          padding: EdgeInsets.all(isTablet ? AppSizes.r20 : AppSizes.r18),
          decoration: BoxDecoration(
            color: PortfolioColors.cardDark,
            borderRadius: BorderRadius.circular(AppSizes.r18),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.portfolioHeaderTitle,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontSize: AppSizes.sp22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: AppSizes.h10),
              Text(
                AppStrings.portfolioHeaderDescription,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: PortfolioColors.grayLighter,
                  fontSize: AppSizes.sp14,
                  height: 1.6,
                ),
              ),
              SizedBox(height: AppSizes.h16),
              Wrap(
                spacing: AppSizes.w12,
                runSpacing: AppSizes.h12,
                children: [
                  SizedBox(
                    width: itemWidth,
                    child: PortfolioStatCard(
                      title: AppStrings.statsProjects,
                      value: '${portfolioProjects.length}',
                      icon: Icons.folder_open,
                    ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: PortfolioStatCard(
                      title: AppStrings.statsCategories,
                      value:
                          '${portfolioProjects.map((project) => project.category).toSet().length}',
                      icon: Icons.dashboard_customize,
                    ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: PortfolioStatCard(
                      title: AppStrings.statsMainStack,
                      value: AppStrings.statsMainStackValue,
                      icon: Icons.flutter_dash,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
