import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/feature/tabs/data/projects_data.dart';
import 'package:protfolio/feature/tabs/widget/ProfileCard.dart';
import 'package:protfolio/feature/tabs/widget/project_card.dart';

class PortfolioTab extends StatelessWidget {
  const PortfolioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileCard(),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: PortfolioColors.cardDark,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Featured Projects',
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'A curated collection of apps that showcase UI quality, architecture and real product-focused features.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: PortfolioColors.grayLighter,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        _buildStatCard(
                          title: 'Projects',
                          value: '${portfolioProjects.length}',
                          icon: Icons.folder_open,
                        ),
                        _buildStatCard(
                          title: 'Categories',
                          value:
                              '${portfolioProjects.map((project) => project.category).toSet().length}',
                          icon: Icons.dashboard_customize,
                        ),
                        _buildStatCard(
                          title: 'Main Stack',
                          value: 'Flutter',
                          icon: Icons.flutter_dash,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ...portfolioProjects.map(
                (project) => ProjectCard(project: project),
              ),
            ],
          ),
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
      width: 150,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDarker,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: PortfolioColors.golden),
          const SizedBox(height: 12),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(color: PortfolioColors.grayLighter),
          ),
        ],
      ),
    );
  }
}
