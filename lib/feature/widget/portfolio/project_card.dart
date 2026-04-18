import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_colors.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/model/project_model.dart';
import 'package:protfolio/feature/widget/portfolio/project_content.dart';
import 'package:protfolio/feature/widget/portfolio/project_image_section.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: AppSizes.h16),
      padding: EdgeInsets.all(AppSizes.r20),
      decoration: BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(AppSizes.r18),
        border: Border.all(
          color: AppColors.cardDarker,
          width: AppSizes.w4 / 4,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProjectImageSection(project: project),
          SizedBox(height: AppSizes.h16),
          ProjectContent(project: project, theme: theme),
        ],
      ),
    );
  }
}
