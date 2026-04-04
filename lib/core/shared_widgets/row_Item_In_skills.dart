import 'package:flutter/material.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:protfolio/core/shared_widgets/default_circle_avatar.dart';

Widget onlyrowiteminskills(BuildContext context, String text) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: AppSizes.w12,
    runSpacing: AppSizes.h8,
    children: [
      defaultCircleAvatar(context),
      ConstrainedBox(
        constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width),
        child: Text(
          text,
          softWrap: true,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: AppSizes.sp18,
          ),
        ),
      ),
    ],
  );
}
