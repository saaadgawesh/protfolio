import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/utils/app_size.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.golden, size: AppSizes.icon24),
        SizedBox(width: AppSizes.w16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: AppSizes.sp12,
                ),
              ),
              SizedBox(height: AppSizes.h4),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: AppSizes.sp18,
                  color: AppColors.golden,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
