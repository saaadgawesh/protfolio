import 'package:flutter/material.dart';
import 'package:protfolio/feature/widget/about/about_section.dart';
import 'package:protfolio/feature/widget/about/recommendation_section.dart';
import 'package:protfolio/feature/widget/about/skills_section.dart';

class AboutContentSection extends StatelessWidget {
  const AboutContentSection({super.key, });



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AboutSection(),
        SizedBox(),
        const SkillsSection(),
        SizedBox(),
        const RecomendationSection(),
      ],
    );
  }
}
