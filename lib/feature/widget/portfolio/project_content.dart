import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/model/project_model.dart';
import 'package:protfolio/core/shared_widgets/open_link_widgets.dart';
import 'package:protfolio/feature/widget/portfolio/project_info_chip.dart';

class ProjectContent extends StatelessWidget {
  const ProjectContent({
    super.key,
    required this.project,
    required this.theme,
  });

  final ProjectModel project;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          project.title,
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: AppSizes.sp20,
          ),
        ),
        SizedBox(height: AppSizes.h8),
        Text(
          project.shortDescription,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: PortfolioColors.grayLighter,
            fontSize: AppSizes.sp14,
            height: 1.5,
          ),
        ),
        SizedBox(height: AppSizes.h12),
        Text(
          project.longDescription,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: PortfolioColors.grayLight,
            fontSize: AppSizes.sp13,
            height: 1.6,
          ),
        ),
        SizedBox(height: AppSizes.h16),
        Text(
          '${AppStrings.projectRoleLabel}: ${project.role}',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: PortfolioColors.golden,
            fontSize: AppSizes.sp14,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: AppSizes.h14),
        Text(
          AppStrings.projectTechnologiesTitle,
          style: theme.textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontSize: AppSizes.sp16,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: AppSizes.h8),
        Column(
          children:
              project.technologies
                  .map(
                    (tech) => Padding(
                      padding: EdgeInsets.only(bottom: AppSizes.h8),
                      child: SizedBox(
                        width: double.infinity,
                        child: ProjectInfoChip(label: tech),
                      ),
                    ),
                  )
                  .toList(),
        ),
        SizedBox(height: AppSizes.h14),
        Text(
          AppStrings.projectHighlightsTitle,
          style: theme.textTheme.titleMedium?.copyWith(
            color: Colors.white,
            fontSize: AppSizes.sp16,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: AppSizes.h8),
        ...project.features.map(
          (feature) => Padding(
            padding: EdgeInsets.only(bottom: AppSizes.h6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: AppSizes.h4),
                  child: Icon(
                    Icons.check_circle,
                    size: AppSizes.icon16,
                    color: PortfolioColors.golden,
                  ),
                ),
                SizedBox(width: AppSizes.w8),
                Expanded(
                  child: Text(
                    feature,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: PortfolioColors.grayLighter,
                      fontSize: AppSizes.sp13,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: AppSizes.h16),
        Wrap(
          spacing: AppSizes.w10,
          runSpacing: AppSizes.h10,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => openLink(project.githubUrl),
                icon: const Icon(Icons.code),
                label: const Text(AppStrings.projectGithubButton),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
