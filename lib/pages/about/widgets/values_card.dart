import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:symbiosis_school_jabalpur/layout/responsive.dart';

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
      width: ResponsiveLayout.isMobile(context) ? 160 : size.width / 7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            iconPath,
            width: ResponsiveLayout.isMobile(context) ? 50 : size.width / 15,
            height: ResponsiveLayout.isMobile(context) ? 50 : size.height / 15,
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              // Black stroke (border) text
              Text(
                title,
                style: TextStyle(
                  fontSize:
                      ResponsiveLayout.isMobile(context) ? 18 : size.width / 60,
                  fontWeight: FontWeight.w900,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1.5 // Adjust stroke thickness as needed
                    ..color = Colors.white,
                  // decoration: TextDecoration.underline,
                ),
              ),
              // Yellow fill text
              Text(
                title,
                style: TextStyle(
                  fontSize:
                      ResponsiveLayout.isMobile(context) ? 18 : size.width / 60,
                  fontWeight: FontWeight.w900,
                  color: Colors.black, // Yellow text color
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 200,
            child: Text(
              description,
              style: TextStyle(
                // fontFamily: "Dan Sirf", // Uncomment if needed
                fontWeight: FontWeight.w800,
                color: const Color(0xFF1A1A1A), // Dark gray for readability
                fontSize:
                    ResponsiveLayout.isMobile(context) ? 16 : size.width / 85,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
