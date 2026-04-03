import 'package:flutter/material.dart';
import 'package:protfolio/feature/widget/about/about_section.dart';
import 'package:protfolio/feature/widget/about/recommendation_section.dart';
import 'package:protfolio/feature/widget/about/skills_section.dart';

class AboutContentSection extends StatelessWidget {
  const AboutContentSection({
    super.key,
    required this.isWide,
    required this.verticalSpacing,
  });

  final bool isWide;
  final double verticalSpacing;

  @override
  Widget build(BuildContext context) {
    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AboutSection(),
                SizedBox(height: verticalSpacing),
                const SkillsSection(),
              ],
            ),
          ),
          SizedBox(width: verticalSpacing),
          const Expanded(child: RecomendationSection()),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AboutSection(),
        SizedBox(height: verticalSpacing),
        const SkillsSection(),
        SizedBox(height: verticalSpacing),
        const RecomendationSection(),
      ],
    );
  }
}
