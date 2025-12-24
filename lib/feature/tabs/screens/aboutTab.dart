import 'package:flutter/material.dart';
import 'package:protfolio/feature/tabs/widget/buildAboutSection.dart';
import 'package:protfolio/feature/tabs/widget/buildProfileCard.dart';
import 'package:protfolio/feature/tabs/widget/buildSkillsSection.dart';
import 'package:protfolio/feature/tabs/widget/recommendationSection.dart';

class AboutTab extends StatefulWidget {
  const AboutTab({super.key});

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  @override
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

              AboutSection(),

              const SizedBox(height: 16),

              SkillsSection(),

              const SizedBox(height: 16),

              RecomendationSection(),
            ],
          ),
        ),
      ),
    );
  }
}
