import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/feature/tabs/model/project_model.dart';
import 'package:protfolio/feature/tabs/widget/open_link_widgets.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDark,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: PortfolioColors.cardDarker),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child:
                  project.imagePaths.isNotEmpty
                      ? Image.asset(
                        project.imagePaths.first,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (_, __, ___) => _ProjectImageFallback(
                              title: project.title,
                              category: project.category,
                            ),
                      )
                      : _ProjectImageFallback(
                        title: project.title,
                        category: project.category,
                      ),
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _InfoChip(label: project.category),
              _InfoChip(label: project.status),
              _InfoChip(label: project.duration),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            project.title,
            style: theme.textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            project.shortDescription,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: PortfolioColors.grayLighter,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            project.longDescription,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: PortfolioColors.grayLight,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Role: ${project.role}',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: PortfolioColors.golden,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 14),
          Text(
            'Technologies',
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children:
                project.technologies
                    .map((tech) => _InfoChip(label: tech))
                    .toList(),
          ),
          const SizedBox(height: 14),
          Text(
            'Highlights',
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          ...project.features.map(
            (feature) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Icon(
                      Icons.check_circle,
                      size: 16,
                      color: PortfolioColors.golden,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      feature,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: PortfolioColors.grayLighter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ElevatedButton.icon(
                onPressed: () => openLink(project.githubUrl),
                icon: const Icon(Icons.code),
                label: const Text('GitHub'),
              ),
              if (project.liveUrl != null && project.liveUrl!.isNotEmpty)
                OutlinedButton.icon(
                  onPressed: () => openLink(project.liveUrl!),
                  icon: const Icon(Icons.open_in_new),
                  label: const Text('Live Demo'),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: PortfolioColors.golden,
                    side: const BorderSide(color: PortfolioColors.golden),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
            ],
          ),
        ],
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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDarker,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: PortfolioColors.grayLighter,
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
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Icon(
            Icons.phone_android_rounded,
            size: 42,
            color: PortfolioColors.golden,
          ),
          const SizedBox(height: 12),
          Text(
            category,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: PortfolioColors.golden,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

