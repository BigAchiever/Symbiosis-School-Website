import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomPictureTab extends StatelessWidget {
  const BottomPictureTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          
          'assets/image/map.svg',
          
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          height: 200,
          // fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}
