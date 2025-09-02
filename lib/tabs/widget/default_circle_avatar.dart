import 'package:flutter/material.dart';
import 'package:protfolio/apptheme/appthemCloude.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget defaultCircleAvatar(BuildContext context) {
  return CircleAvatar(radius: 5, backgroundColor: PortfolioColors.golden);
  // backgroundImage: AssetImage(imagePath),
  //   child: const Icon(Icons.person, size: 40),
  // );}
}

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

    indicatorStyle: const IndicatorStyle(
      indicatorXY: 0.2,
      width: 16,

      color: PortfolioColors.golden,
    ),
    beforeLineStyle: const LineStyle(
      color: PortfolioColors.golden,
      thickness: 2,
    ),
    endChild: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // defaultCircleAvatar(context),
            SizedBox(width: 25),

            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),

        Container(
          padding: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' $text1',
                style: TextStyle(
                  color: PortfolioColors.golden,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' $text2',
                style: TextStyle(
                  color: PortfolioColors.golden,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ' $text3',
                style: TextStyle(
                  color: PortfolioColors.golden,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget onlyrowiteminskills(BuildContext context, String text) {
  return Row(
    children: [
      defaultCircleAvatar(context),

      SizedBox(width: 25),

      Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    ],
  );
  // backgroundImage: AssetImage(imagePath),
  //   child: const Icon(Icons.person, size: 40),
  // );}
}
