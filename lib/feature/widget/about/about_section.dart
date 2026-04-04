import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/constants/app_string.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/shared_widgets/default_divider.dart';

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
            AppStrings.aboutTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          defaultdivider(AppSizes.h3, 0, AppSizes.w200),
          SizedBox(height: AppSizes.h12),
          Text(
            AppStrings.aboutDescription,
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
