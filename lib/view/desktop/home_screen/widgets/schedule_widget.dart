import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:travel_dashboard/data/schedule_data.dart';
import 'package:travel_dashboard/view/desktop/home_screen/widgets/small_rounded_image.dart';

import '../../../../utils/app_colors.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'My Schedule',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.textColor2,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            IconButton(
              onPressed: () {},
              splashRadius: 20,
              icon: Icon(
                TernavIcons.lightOutline.more,
                color: AppColors.textColor1,
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: ScheduleData.schedule.length,
              itemBuilder: (context, index) {
                var data = ScheduleData.schedule;
                return Container(
                  //height: height * 0.12,
                  height: 90,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(right: 8.0, top: 16),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: AppColors.textColor1,
                      width: 0.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      SmallRoundedImage(
                        image: data[index].coverImage,
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              data[index].title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 12,
                                color: AppColors.textColor2,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  TernavIcons.lightOutline.calender,
                                  color: AppColors.textColor1,
                                  size: 12,
                                ),
                                Expanded(
                                  child: Text(
                                    data[index].date,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: AppColors.textColor1,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                              height: 20,
                              child: Stack(
                                children: List.generate(
                                  data[index].peopleImages.length,
                                  (index) {
                                    return Positioned(
                                        left: index * 12,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              data[index].peopleImages[index]),
                                          radius: 10,
                                        ));
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
