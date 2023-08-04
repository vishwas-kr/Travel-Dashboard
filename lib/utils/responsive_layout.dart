import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget tablet;
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.desktop,
    required this.tablet,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobile;
        } else if (constraints.maxWidth < 1100) {
          return tablet;
        } else {
          return desktop;
        }
      },
    );
  }
}
