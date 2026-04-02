import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/model/project_model.dart';
import 'package:protfolio/feature/tabs/widget/open_link_widgets.dart';

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
                        child: _ProjectImageSection(project: project),
                      ),
                      SizedBox(width: AppSizes.w20),
                      Expanded(
                        flex: 7,
                        child: _ProjectContent(project: project, theme: theme),
                      ),
                    ],
                  )
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _ProjectImageSection(project: project),
                      SizedBox(height: AppSizes.h16),
                      _ProjectContent(project: project, theme: theme),
                    ],
                  ),
        );
      },
    );
  }
}

class _ProjectContent extends StatelessWidget {
  const _ProjectContent({required this.project, required this.theme});

  final ProjectModel project;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: AppSizes.w8,
          runSpacing: AppSizes.h8,
          children: [
            _InfoChip(label: project.category),
            _InfoChip(label: project.status),
            _InfoChip(label: project.duration),
          ],
        ),
        SizedBox(height: AppSizes.h12),
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
                        child: _InfoChip(label: tech),
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

class _ProjectImageSection extends StatefulWidget {
  const _ProjectImageSection({required this.project});

  final ProjectModel project;

  @override
  State<_ProjectImageSection> createState() => _ProjectImageSectionState();
}

class _ProjectImageSectionState extends State<_ProjectImageSection> {
  late final PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final images = widget.project.imagePaths;

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSizes.r14),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child:
            images.isNotEmpty
                ? Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: images.length,
                      onPageChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                          errorBuilder:
                              (_, __, ___) => _ProjectImageFallback(
                                title: widget.project.title,
                                category: widget.project.category,
                              ),
                        );
                      },
                    ),
                    if (images.length > 1)
                      Positioned(
                        top: AppSizes.h12,
                        right: AppSizes.w12,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.45),
                            borderRadius: BorderRadius.circular(AppSizes.r24),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppSizes.w8,
                              vertical: AppSizes.h4,
                            ),
                            child: Text(
                              '${_currentIndex + 1}/${images.length}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: AppSizes.sp11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                )
                : _ProjectImageFallback(
                  title: widget.project.title,
                  category: widget.project.category,
                ),
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  const _InfoChip({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w12,
        vertical: AppSizes.h8,
      ),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDarker,
        borderRadius: BorderRadius.circular(AppSizes.r24),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: PortfolioColors.grayLighter,
          fontSize: AppSizes.sp11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _ProjectImageFallback extends StatelessWidget {
  const _ProjectImageFallback({required this.title, required this.category});

  final String title;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [PortfolioColors.cardDark, PortfolioColors.darkSecondary],
        ),
        borderRadius: BorderRadius.circular(AppSizes.r14),
      ),
      padding: EdgeInsets.all(AppSizes.r20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.phone_android_rounded,
            size: AppSizes.icon42,
            color: PortfolioColors.golden,
          ),
          SizedBox(height: AppSizes.h12),
          Text(
            category,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: PortfolioColors.golden,
              fontSize: AppSizes.sp14,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: AppSizes.h8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontSize: AppSizes.sp20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
