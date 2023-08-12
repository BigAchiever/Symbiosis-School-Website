import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schooll_website/layout/responsive.dart';

class ContentCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;

  const ContentCard({
    super.key,
    required this.iconPath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: ResponsiveLayout.isMobile(context) ? 120 : size.width / 7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            iconPath,
            width: ResponsiveLayout.isMobile(context) ? 40 : size.width / 15,
            height: ResponsiveLayout.isMobile(context) ? 40 : size.height / 15,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize:
                  ResponsiveLayout.isMobile(context) ? 18 : size.width / 70,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            child: Text(
              description,
              style: TextStyle(
                fontSize:
                    ResponsiveLayout.isMobile(context) ? 14 : size.width / 85,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
