import 'package:flutter/material.dart';
import 'package:schooll_website/layout/responsive.dart';

class CardContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String discription;
  const CardContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.discription});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      clipBehavior: Clip.none,
      height: ResponsiveLayout.isMobile(context)
          ? size.height / 1.8
          : size.height / 1.6,
      width: ResponsiveLayout.isMobile(context) ? 300 : size.width / 3.5,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: ResponsiveLayout.isMobile(context) ? 1 : 2,
        ),
        boxShadow: [
          ResponsiveLayout.isMobile(context)
              ? const BoxShadow(
                  color: Colors.transparent,
                  blurRadius: 0,
                  offset: Offset(-5, 5),
                )
              : const BoxShadow(
                  color: Colors.black,
                  blurRadius: 0,
                  offset: Offset(-10, 10),
                ),
        ],
      ),
      child: Padding(
        padding: ResponsiveLayout.isMobile(context)
            ? const EdgeInsets.all(20)
            : const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize:
                      ResponsiveLayout.isMobile(context) ? 30 : size.width / 60,
                  fontFamily: "Dan Sirf Bold",
                  fontWeight: FontWeight.w600,
                  backgroundColor: Colors.yellow,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              subtitle.toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                fontSize:
                    ResponsiveLayout.isMobile(context) ? 20 : size.width / 60,
                fontFamily: "Dan Sirf Bold",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              discription,
              style: TextStyle(
                color: Colors.black,
                fontSize:
                    ResponsiveLayout.isMobile(context) ? 14 : size.width / 90,
                fontFamily: "Dan Sirf",
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
