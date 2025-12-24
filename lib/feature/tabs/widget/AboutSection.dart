import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/feature/tabs/widget/default_Divider.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
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
            'About Me',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
         defaultdivider(3.h, 0.w, 200.w),
          const SizedBox(height: 12),
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
