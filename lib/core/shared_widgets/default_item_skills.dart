import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/app_colors.dart';
import 'package:protfolio/core/utils/app_size.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget defaultitemskills(
    BuildContext context, String text, String text1, String text2, String text3,
    {List<String> extraItems = const []}) {
  final details = [
    text1,
    text2,
    text3,
    ...extraItems,
  ].where((item) => item.trim().isNotEmpty);

  return TimelineTile(
    alignment: TimelineAlign.start,
    lineXY: 0.1,
    indicatorStyle: IndicatorStyle(
      indicatorXY: 0.2,
      width: AppSizes.w16,
      color: AppColors.golden,
    ),
    beforeLineStyle: LineStyle(
      color: AppColors.golden,
      thickness: AppSizes.h3,
    ),
    endChild: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(start: AppSizes.w24),
          child: Text(
            text,
            softWrap: true,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: AppSizes.sp18,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: AppSizes.w30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: details
                .map(
                  (item) => Padding(
                    padding: EdgeInsets.only(bottom: AppSizes.h4),
                    child: Text(
                      item,
                      softWrap: true,
                      style: TextStyle(
                        color: AppColors.golden,
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.sp16,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    ),
  );
}
