import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:travel_dashboard/data/trip_data.dart';
import 'package:travel_dashboard/view/desktop/home_screen/widgets/card_data.dart';

import '../../../../utils/app_colors.dart';

class BuildTrekkingCards extends StatelessWidget {
  const BuildTrekkingCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: MediaQuery.sizeOf(context).height / 3,
      height: 250,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: TripData.tripData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var data = TripData.tripData;
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                // height: 260,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        // 'assets/images/cards/p1.png',
                        data[index].coverImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              // 'Mount Forel',
                              data[index].title,
                              style: const TextStyle(
                                color: AppColors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                cardData(
                                  icon: TernavIcons.lightOutline.location,
                                  text: data[index].location,
                                ),
                                const Spacer(),
                                cardData(
                                  icon: TernavIcons.lightOutline.star,
                                  text: data[index].rating,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
