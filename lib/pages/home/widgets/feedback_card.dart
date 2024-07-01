import 'package:auto_size_text/auto_size_text.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final double height = constraints.maxHeight;

        return Container(
          width: ResponsiveLayout.isMobile(context) ? width / 1.2 : width / 1.2,
          height: ResponsiveLayout.isMobile(context) ? null : height / 1.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: Card(
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  AutoSizeText(
                    title,
                    style: TextStyle(
                      fontSize:
                          ResponsiveLayout.isMobile(context) ? 26 : width / 20,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Magic Brush',
                    ),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    child: AutoSizeText(
                      feedback,
                      style: TextStyle(
                        fontSize: ResponsiveLayout.isMobile(context)
                            ? 20
                            : width / 25,
                      ),
                      minFontSize: 12,
                      stepGranularity: 2,
                      maxLines: ResponsiveLayout.isMobile(context) ? 10 : 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        'By $authorName',
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: ResponsiveLayout.isMobile(context)
                              ? 14
                              : width / 30,
                          color: Colors.grey[700],
                        ),
                      ),
                      AutoSizeText(
                        date,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: ResponsiveLayout.isMobile(context)
                              ? 14
                              : width / 30,
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
      },
    );
  }
}
