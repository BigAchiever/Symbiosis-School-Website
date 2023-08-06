import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'feedback_card.dart';

class FeedBackTab extends StatelessWidget {
  const FeedBackTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 1.6,
      width: size.width,
      decoration: const BoxDecoration(
        color: Color(0xffF8F8F8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/image/hero-background-1.png"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/image/puzzle.svg",
            height: 100,
            width: 100,
          ),
          const SizedBox(height: 30),
          Text(
            "We're Hit",
            style: TextStyle(
              fontSize: size.width / 30,
              color: Colors.black,
              fontFamily: "Magic Brush",
            ),
          ),
          Text(
            "We hate to blow our own trumpets - so listen to\nwhat others say about us instead!",
            style: TextStyle(
              fontSize: size.width / 80,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FeedbackCard(
                title: 'Great School Experience',
                feedback:
                    'I had a wonderful time studying at Symbiosis School. The teachers are excellent, and the facilities are top-notch.',
                authorName: 'John Doe',
                date: 'July 25, 2023',
              ),
              SizedBox(width: 20),
              FeedbackCard(
                title: 'Great School Experience',
                feedback:
                    'I had a wonderful time studying at Symbiosis School. The teachers are excellent, and the facilities are top-notch.',
                authorName: 'John Doe',
                date: 'July 25, 2023',
              ),
              SizedBox(width: 20),
              FeedbackCard(
                title: 'Great School Experience',
                feedback:
                    'I had a wonderful time studying at Symbiosis School. The teachers are excellent, and the facilities are top-notch.',
                authorName: 'John Doe',
                date: 'July 25, 2023',
              ),
            ],
          )
        ],
      ),
    );
  }
}
