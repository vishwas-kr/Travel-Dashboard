import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:travel_dashboard/utils/app_colors.dart';
import 'package:travel_dashboard/view/desktop/home_screen/widgets/build_trek_card.dart';

import '../widgets/bottom_card.dart';
import '../widgets/discount_card.dart';
import '../widgets/join_card.dart';
import '../widgets/last_container.dart';
import '../widgets/menu_button.dart';
import '../widgets/text_field.dart';

class DesktopScreen extends StatefulWidget {
  const DesktopScreen({super.key});

  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Row(
        children: [
          SingleChildScrollView(
            child: Container(
              width: 250,
              color: Colors.white,
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Travigo',
                      style: TextStyle(
                          fontSize: 28,
                          color: AppColors.textColor2,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 70),
                      const MenuButton(),
                      const SizedBox(height: 40),
                      const DiscountCard(),
                      const SizedBox(height: 40),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(TernavIcons.lightOutline.logout,
                            color: AppColors.textColor1),
                        label: const Text(
                          'Log Out',
                          style: TextStyle(color: AppColors.textColor1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.backgroundColor2,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello Jerremy! 👋',
                                style: TextStyle(
                                  fontSize: 28,
                                  color: AppColors.textColor2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Welcome back and explore the world.',
                                style: TextStyle(
                                  color: AppColors.textColor1,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: width / 5,
                              child: customTextField(
                                  controller: textController,
                                  prefixIcon: Icon(
                                    TernavIcons.lightOutline.search,
                                    color: AppColors.textColor1,
                                  ),
                                  hintText: 'Search Destination...'),
                            ),
                            const SizedBox(width: 10),
                            IconButton(
                              onPressed: () {},
                              style: IconButton.styleFrom(
                                  backgroundColor: AppColors.white),
                              icon: Icon(
                                TernavIcons.lightOutline.bell,
                                size: 28,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 40),
                    const BuildTrekkingCards(),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: height / 2.5,
                      child: const Row(
                        children: [
                          BestDestination(),
                          JoinCard(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          LastContainer(width: width, height: height),
        ],
      ),
    );
  }
}
