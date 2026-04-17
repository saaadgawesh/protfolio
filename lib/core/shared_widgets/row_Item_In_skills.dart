import 'package:flutter/material.dart';
import 'package:protfolio/core/shared_widgets/default_circle_avatar.dart';
import 'package:protfolio/core/utils/app_size.dart';

Widget onlyrowiteminskills(BuildContext context, String text) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: AppSizes.w12,
    runSpacing: AppSizes.h8,
    children: [
      defaultCircleAvatar(context),
      Text(
        text,
        softWrap: true,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSizes.sp18,
        ),
      ),
    ],
  );
}
