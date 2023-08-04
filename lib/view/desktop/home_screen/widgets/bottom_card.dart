import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:travel_dashboard/data/best_destinations.dart';

import '../../../../utils/app_colors.dart';
import 'card_data.dart';
import 'small_rounded_image.dart';

class BestDestination extends StatelessWidget {
  const BestDestination({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        height: double.maxFinite,
        width: MediaQuery.sizeOf(context).width / 3,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.backgroundColor1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Best Destination 🌈',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.textColor2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '100 Destination found',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.textColor1,
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 35,
                    width: 75,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.textColor1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          TernavIcons.lightOutline.filter_2,
                          color: AppColors.textColor1,
                          size: 14,
                        ),
                        const Text(
                          'Filters',
                          style: TextStyle(
                              color: AppColors.textColor1, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: BestDestinations.bestDestination.length,
                  itemBuilder: (context, index) {
                    var data = BestDestinations.bestDestination;
                    return Container(
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        children: [
                          SmallRoundedImage(
                            image: data[index].image,
                          ),
                          //const SizedBox(width: 20),
                          const Spacer(),
                          SizedBox(
                            //  width: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  data[index].title,
                                  style: const TextStyle(
                                    color: AppColors.textColor2,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    cardData(
                                      icon: TernavIcons.lightOutline.location,
                                      text: data[index].location,
                                      color: AppColors.textColor1,
                                    ),
                                    const SizedBox(width: 40),
                                    cardData(
                                      icon: TernavIcons.lightOutline.star,
                                      text: data[index].rating,
                                      color: AppColors.textColor1,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Spacer(flex: 3),
                          RichText(
                            text: TextSpan(
                              text: '\$${data[index].price}',
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: AppColors.textColor2,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                              children: const [
                                TextSpan(
                                  text: '/day',
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.textColor1,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: 1),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
