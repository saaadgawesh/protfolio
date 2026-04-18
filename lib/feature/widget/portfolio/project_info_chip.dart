import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_colors.dart';
import 'package:protfolio/core/utils/app_size.dart';

class ProjectInfoChip extends StatelessWidget {
  const ProjectInfoChip({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.w12,
        vertical: AppSizes.h8,
      ),
      decoration: BoxDecoration(
        color: AppColors.cardDarker,
        borderRadius: BorderRadius.circular(AppSizes.r24),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: AppColors.grayLighter,
          fontSize: AppSizes.sp11,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
