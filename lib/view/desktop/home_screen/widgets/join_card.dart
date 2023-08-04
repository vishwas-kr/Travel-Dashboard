import 'package:flutter/material.dart';

import '../../../../utils/app_colors.dart';

class JoinCard extends StatelessWidget {
  const JoinCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 24),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.textColor2,
          //color: Colors.red,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: size.height / 6,
              child: Image.network(
                'assets/images/guide.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Let\'s Explore \n The Beauty',
              softWrap: true,
              maxLines: 2,
              // minFontSize: 12,
              // maxFontSize: 16,
              style: TextStyle(
                fontSize: size.height * 0.024,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            Text(
              'Get special offers & news.',
              softWrap: true,
              maxLines: 1,
              //maxFontSize: 12,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: size.height * 0.022,
                color: AppColors.textColor1,
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: size.height * 0.045,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: AppColors.activeButtonColor,
                ),
                child: Text(
                  'Join Now',
                  style: TextStyle(
                    fontSize: size.height * 0.022,
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
