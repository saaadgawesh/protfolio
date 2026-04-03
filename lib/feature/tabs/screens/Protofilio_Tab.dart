import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/data/projects_data.dart';
import 'package:protfolio/feature/widget/portfolio/portfolio_tab_widgets.dart';

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
                isDesktop
                    ? AppSizes.w32
                    : (isTablet ? AppSizes.w24 : AppSizes.w16);

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
                      PortfolioHeaderSection(isTablet: isTablet),
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
}
