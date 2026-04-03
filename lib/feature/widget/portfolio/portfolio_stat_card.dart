import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/utils/App_Size.dart';

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
        color: PortfolioColors.cardDarker,
        borderRadius: BorderRadius.circular(AppSizes.r16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: PortfolioColors.golden, size: AppSizes.icon20),
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
            style: TextStyle(
              color: PortfolioColors.grayLighter,
              fontSize: AppSizes.sp11,
            ),
          ),
        ],
      ),
    );
  }
}
