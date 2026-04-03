import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/utils/App_Size.dart';

class ProjectImageFallback extends StatelessWidget {
  const ProjectImageFallback({
    super.key,
    required this.title,
    required this.category,
  });

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
        borderRadius: BorderRadius.circular(AppSizes.r14),
      ),
      padding: EdgeInsets.all(AppSizes.r20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            Icons.phone_android_rounded,
            size: AppSizes.icon42,
            color: PortfolioColors.golden,
          ),
          SizedBox(height: AppSizes.h12),
          Text(
            category,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: PortfolioColors.golden,
              fontSize: AppSizes.sp14,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: AppSizes.h8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontSize: AppSizes.sp20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
