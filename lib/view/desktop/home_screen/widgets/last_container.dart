import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:travel_dashboard/view/desktop/home_screen/widgets/custom_calender.dart';
import 'package:travel_dashboard/view/desktop/home_screen/widgets/schedule_widget.dart';

import '../../../../utils/app_colors.dart';

class LastContainer extends StatelessWidget {
  const LastContainer({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 24),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.18,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/128/1154/1154472.png'),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jeremy Zuck ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.textColor2,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                          Text(
                            'Traveler Enthusiast ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: AppColors.textColor1,
                              letterSpacing: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () {},
                      splashRadius: 20,
                      icon: Icon(TernavIcons.lightOutline.arrow_down_1),
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
              //const Spacer(),
              const CustomCalendar(),
              //const Spacer(),
              const ScheduleWidget()
            ],
          ),
        ),
      ),
    );
  }
}
