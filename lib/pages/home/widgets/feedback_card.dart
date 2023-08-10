import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schooll_website/layout/responsive.dart';

class FeedbackCard extends StatelessWidget {
  final String title;
  final String feedback;
  final String authorName;
  final String date;

  const FeedbackCard({
    super.key,
    required this.title,
    required this.feedback,
    required this.authorName,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: ResponsiveLayout.isMobile(context)
          ? size.width / 1.2
          : size.width / 4.5,
      height: ResponsiveLayout.isMobile(context)
          ? size.height / 1.8
          : size.height / 2.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.black,
            width: 1,
          )),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/image/rocket.svg',
                width: ResponsiveLayout.isMobile(context) ? 60 : 40,
                height: ResponsiveLayout.isMobile(context) ? 60 : 40,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize:
                      ResponsiveLayout.isMobile(context) ? 24 : size.width / 80,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Magic Brush',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: ResponsiveLayout.isMobile(context)
                    ? size.width / 1.2
                    : size.width / 5.5,
                child: Text(
                  feedback,
                  style: TextStyle(
                    fontSize: ResponsiveLayout.isMobile(context)
                        ? 16
                        : size.width / 85,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'By $authorName',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: ResponsiveLayout.isMobile(context)
                          ? 14
                          : size.width / 90,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    date,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: ResponsiveLayout.isMobile(context)
                          ? 14
                          : size.width / 90,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
