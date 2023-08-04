import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../../../../utils/app_colors.dart';

class MenuButton extends StatefulWidget {
  const MenuButton({
    super.key,
  });

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  int selected = 0;

  List<String> menuLabel = [
    'Dashboard',
    'My Tickets',
    'Favorite',
    'Message',
    'Transaction',
    'Settings'
  ];

  List<IconData> iconData = [
    TernavIcons.lightOutline.home_2,
    TernavIcons.lightOutline.note,
    TernavIcons.lightOutline.bookmark,
    TernavIcons.lightOutline.message,
    TernavIcons.lightOutline.wallet,
    TernavIcons.lightOutline.settings
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: menuLabel.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Card(
              elevation: selected == index ? 1 : 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Container(
                height: 45,
                width: double.maxFinite,
                //alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: selected == index
                      ? AppColors.activeButtonColor
                      : Colors.transparent,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      iconData[index],
                      color: selected == index
                          ? AppColors.white
                          : AppColors.textColor1,
                      size: 22,
                    ),
                    const SizedBox(width: 15),
                    Center(
                      child: Text(
                        menuLabel[index],
                        style: TextStyle(
                          color: selected == index
                              ? AppColors.white
                              : AppColors.textColor1,
                          letterSpacing: 1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
