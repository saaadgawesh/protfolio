import 'package:flutter/material.dart';
import 'package:protfolio/core/Appthem.dart';
import 'package:protfolio/feature/tabs/widget/default_Divider.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      {
        'icon': Icons.phone_android,
        'title': 'Mobile Development',
        'subtitle': 'Flutter & Dart',
      },
      {'icon': Icons.api, 'title': 'API Integration', 'subtitle': 'REST '},
      {
        'icon': Icons.design_services,
        'title': 'UI/UX Design',
        'subtitle': 'Modern Interfaces',
      },
      {
        'icon': Icons.cloud,
        'title': 'Backend Services',
        'subtitle': 'Firebase',
      },
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDark,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills & Services',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          defaultdivider(3, 0, 120),
          const SizedBox(height: 16),
          ...skills
              .map(
                (skill) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: PortfolioColors.golden,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          skill['icon'] as IconData,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              skill['title'] as String,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              skill['subtitle'] as String,
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
