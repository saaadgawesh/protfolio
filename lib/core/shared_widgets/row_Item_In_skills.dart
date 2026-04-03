import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:protfolio/core/shared_widgets/default_circle_avatar.dart';

Widget onlyrowiteminskills(BuildContext context, String text) {
  return Row(
    children: [
      defaultCircleAvatar(context),
      SizedBox(width: AppSizes.w24),
      Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSizes.sp18,
        ),
      ),
    ],
  );
}
