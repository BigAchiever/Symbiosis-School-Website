import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schooll_website/layout/responsive.dart';

class BottomPictureTab extends StatelessWidget {
  const BottomPictureTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset(
          ResponsiveLayout.isMobile(context)
              ? "assets/image/map-mobile.svg"
              : 'assets/image/map.svg',

          alignment: Alignment.bottomCenter,
          width: double.infinity,
          height: 200,
          // fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}
