import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protfolio/core/constants/Appthem.dart';

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
        Icon(icon, color: PortfolioColors.golden),
        SizedBox(width: 30.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.grey)),
            Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: PortfolioColors.golden,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
