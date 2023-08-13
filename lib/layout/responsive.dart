import 'package:flutter/material.dart';

import '../utils/constants/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout(
      {super.key, required this.mobileBody, required this.desktopBody});

  static bool isMobile(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return size.width < mobileWidth;
  }

  static bool isSmall(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return size.width < 320;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
