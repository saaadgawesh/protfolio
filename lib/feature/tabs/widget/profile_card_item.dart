import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/utils/App_Size.dart';

class ProfileCardItem extends StatelessWidget {
  const ProfileCardItem({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });
  final String title;
  final String description;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, color: PortfolioColors.golden, size: AppSizes.icon24),
        SizedBox(width: AppSizes.w30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.grey,
                fontSize: AppSizes.sp12,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.sp18,
                color: PortfolioColors.golden,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
