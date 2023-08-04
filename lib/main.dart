import 'package:flutter/material.dart';
import 'package:travel_dashboard/utils/responsive_layout.dart';
import 'package:travel_dashboard/view/desktop/home_screen/screens/desktop_screen.dart';
import 'package:travel_dashboard/view/mobile/screens/mobile_screen.dart';
import 'package:travel_dashboard/view/tablet/screens/tablet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: const ResponsiveLayout(
        mobile: MobileScrren(),
        desktop: DesktopScreen(),
        tablet: TabletScreen(),
      ),
    );
  }
}
