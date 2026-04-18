import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_colors.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/data/projects_data.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/feature/widget/portfolio/portfolio_stat_card.dart';

class PortfolioHeaderSection extends StatelessWidget {
  const PortfolioHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.r20),
      decoration: BoxDecoration(
        color: AppColors.cardDark,
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
                  color: AppColors.grayLighter,
                  fontSize: AppSizes.sp14,
                  height: 1.6,
                ),
          ),
          SizedBox(height: AppSizes.h16),
          Row(
            children: [
              Expanded(
                child: PortfolioStatCard(
                  title: AppStrings.statsProjects,
                  value: '${portfolioProjects.length}',
                  icon: Icons.folder_open,
                ),
              ),
              SizedBox(width: AppSizes.w12),
              Expanded(
                child: PortfolioStatCard(
                  title: AppStrings.statsCategories,
                  value:
                      '${portfolioProjects.map((project) => project.category).toSet().length}',
                  icon: Icons.dashboard_customize,
                ),
              ),
              SizedBox(width: AppSizes.w12),
              Expanded(
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
  }
}
