import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/model/project_model.dart';
import 'package:protfolio/feature/widget/portfolio/project_content.dart';
import 'package:protfolio/feature/widget/portfolio/project_image_section.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isWide = constraints.maxWidth >= 900;
        final double padding =
            constraints.maxWidth >= 700 ? AppSizes.r20 : AppSizes.r16;

        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: AppSizes.h16),
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: PortfolioColors.cardDark,
            borderRadius: BorderRadius.circular(AppSizes.r18),
            border: Border.all(
              color: PortfolioColors.cardDarker,
              width: AppSizes.w4 / 4,
            ),
          ),
          child:
              isWide
                  ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 5,
                        child: ProjectImageSection(project: project),
                      ),
                      SizedBox(width: AppSizes.w20),
                      Expanded(
                        flex: 7,
                        child: ProjectContent(project: project, theme: theme),
                      ),
                    ],
                  )
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProjectImageSection(project: project),
                      SizedBox(height: AppSizes.h16),
                      ProjectContent(project: project, theme: theme),
                    ],
                  ),
        );
      },
    );
  }
}
