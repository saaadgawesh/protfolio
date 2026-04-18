import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_colors.dart';
import 'package:protfolio/core/utils/app_size.dart';

Widget defaultCircleAvatar(BuildContext context) {
  return CircleAvatar(
    radius: AppSizes.r5,
    backgroundColor: AppColors.golden,
  );
}
