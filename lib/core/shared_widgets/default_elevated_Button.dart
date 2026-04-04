import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/appthem.dart';
import 'package:protfolio/core/utils/app_size.dart';

Widget defaultelevatedbutton(
  VoidCallback? onPressed,
  IconData icon,
  String text,
) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: PortfolioColors.cardDark,
        padding: EdgeInsets.symmetric(vertical: AppSizes.h16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.r12),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: PortfolioColors.golden, size: AppSizes.icon24),
          SizedBox(width: AppSizes.w12),
          Expanded(
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: AppSizes.sp16,
                fontWeight: FontWeight.bold,
                color: PortfolioColors.golden,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
