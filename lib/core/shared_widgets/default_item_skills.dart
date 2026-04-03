import 'package:flutter/material.dart';
import 'package:protfolio/core/constants/Appthem.dart';
import 'package:protfolio/core/utils/App_Size.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget defaultitemskills(
  BuildContext context,
  String text,
  String text1,
  String text2,
  String text3,
) {
  return TimelineTile(
    alignment: TimelineAlign.start,
    lineXY: 0.1,
    indicatorStyle: IndicatorStyle(
      indicatorXY: 0.2,
      width: AppSizes.w16,
      color: PortfolioColors.golden,
    ),
    beforeLineStyle: LineStyle(
      color: PortfolioColors.golden,
      thickness: AppSizes.h3,
    ),
    endChild: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: AppSizes.w24),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.sp18,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: AppSizes.w30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' $text1',
                style: TextStyle(
                  color: PortfolioColors.golden,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSizes.sp16,
                ),
              ),
              Text(
                ' $text2',
                style: TextStyle(
                  color: PortfolioColors.golden,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSizes.sp16,
                ),
              ),
              Text(
                ' $text3',
                style: TextStyle(
                  color: PortfolioColors.golden,
                  fontWeight: FontWeight.bold,
                  fontSize: AppSizes.sp16,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
