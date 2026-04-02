import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/feature/tabs/widget/default_Divider.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.r16),
      decoration: BoxDecoration(
        color: PortfolioColors.cardDark,
        borderRadius: BorderRadius.circular(AppSizes.r15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: AppSizes.r8,
            offset: Offset(0, AppSizes.h4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Me',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          defaultdivider(AppSizes.h3, 0, AppSizes.w200),
          SizedBox(height: AppSizes.h12),
          Text(
            'Passionate Flutter developer with +2 years of experience in mobile app development. '
            'I specialize in creating beautiful, performant cross-platform applications that deliver '
            'exceptional user experiences. My expertise includes state management, API integration, '
            'and implementing modern UI/UX designs.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey[300],
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
