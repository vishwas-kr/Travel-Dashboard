import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../../../../utils/app_colors.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      // width: width,
      decoration: BoxDecoration(
        color: Colors.greenAccent.shade100,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            child: Image.network(
              'assets/images/calen.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichText(
                  text: const TextSpan(
                    text: '50% ',
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.orange,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5),
                    children: [
                      TextSpan(
                        text: 'Discount!',
                        style: TextStyle(
                            color: AppColors.textColor2, letterSpacing: 1.5),
                      )
                    ],
                  ),
                ),
                const Text(
                  'Get a discount on certain days and don\'t miss it.',
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textColor1,
                      fontWeight: FontWeight.w100),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.orange,
                  ),
                  child: Icon(
                    TernavIcons.lightOutline.arrow_right_3,
                    color: AppColors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
