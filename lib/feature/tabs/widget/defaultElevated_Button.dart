import 'package:flutter/material.dart';
import 'package:protfolio/core/Appthem.dart';

Widget defaultelevatedbutton(

  void Function()? onPressed,

  IconData icon,
  String text,
) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: PortfolioColors.cardDark,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: PortfolioColors.golden, size: 24),
          SizedBox(width: 30),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: PortfolioColors.golden,
            ),
          ),
        ],
      ),
    ),
  );
}
