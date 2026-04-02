import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/widget/Profile_card.dart';
import 'package:protfolio/feature/tabs/widget/about_section.dart';
import 'package:protfolio/feature/tabs/widget/recommendation_section.dart';
import 'package:protfolio/feature/tabs/widget/skills_section.dart';

class AboutTab extends StatefulWidget {
  const AboutTab({super.key});

  @override
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final bool isWide = constraints.maxWidth >= 1100;
            final bool isTablet = constraints.maxWidth >= 700;
            final double horizontalPadding =
                isWide ? AppSizes.w32 : (isTablet ? AppSizes.w24 : AppSizes.w16);
            final double verticalSpacing =
                isTablet ? AppSizes.h20 : AppSizes.h16;
            final double contentMaxWidth = isWide ? 1200 : 900;

            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: AppSizes.h16,
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: contentMaxWidth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const ProfileCard(),
                      SizedBox(height: verticalSpacing),
                      if (isWide)
                        Row(
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
                        )
                      else ...[
                        const AboutSection(),
                        SizedBox(height: verticalSpacing),
                        const SkillsSection(),
                        SizedBox(height: verticalSpacing),
                        const RecomendationSection(),
                      ],
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
