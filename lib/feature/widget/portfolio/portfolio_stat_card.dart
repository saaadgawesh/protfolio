import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/utils/app_size.dart';

class PortfolioStatCard extends StatelessWidget {
  const PortfolioStatCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  final String title;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(AppSizes.r12),
      decoration: BoxDecoration(
        color: AppColors.cardDarker,
        borderRadius: BorderRadius.circular(AppSizes.r16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.golden, size: AppSizes.icon20),
          SizedBox(height: AppSizes.h8),
          Text(
            value,
            maxLines: 1,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: AppSizes.sp16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppSizes.h4),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: AppColors.grayLighter,
              fontSize: AppSizes.sp11,
            ),
          ),
        ],
      ),
    );
  }
}
