import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';

Widget cardData({
  required IconData icon,
  required String text,
  Color? color = AppColors.white,
}) {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 16,
        ),
        const SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
              fontSize: 10, color: color, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
