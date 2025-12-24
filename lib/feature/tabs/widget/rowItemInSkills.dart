import 'package:flutter/material.dart';
import 'package:protfolio/feature/tabs/widget/defaultCircleAvatar.dart';

Widget onlyrowiteminskills(BuildContext context, String text) {
  return Row(
    children: [
      defaultCircleAvatar(context),

      SizedBox(width: 25),

      Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
    ],
  );
}
