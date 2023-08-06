import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      width: size.width / 4.5,
      height: size.height / 2.5,
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
                width: 40,
                height: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: size.width / 80,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Magic Brush',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width / 5.5,
                child: Text(
                  feedback,
                  style: TextStyle(
                    fontSize: size.width / 85,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'By $authorName',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: size.width / 90,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    date,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: size.width / 90,
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
