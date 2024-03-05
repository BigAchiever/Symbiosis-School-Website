import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'feedback_card.dart';

class FeedBackTab extends StatefulWidget {
  const FeedBackTab({super.key});

  @override
  State<FeedBackTab> createState() => _FeedBackTabState();
}

class _FeedBackTabState extends State<FeedBackTab> {
  int _currentIndex = 0;
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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: size.width / 1.2,
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.3,
                height: size.height / 2.5,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayCurve: Curves.fastOutSlowIn,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                  print(index);
                },
              ),
              items: const [
                FeedbackCard(
                  title: 'Great School Experience',
                  feedback:
                      'I had a wonderful time studying at Symbiosis School. The teachers are excellent, and the facilities are top-notch.',
                  authorName: 'John Doe',
                  date: 'July 25, 2023',
                ),
                FeedbackCard(
                  title: 'Great School Experience',
                  feedback:
                      'I had a wonderful time studying at Symbiosis School. The teachers are excellent, and the facilities are top-notch.',
                  authorName: 'John Doe',
                  date: 'July 25, 2023',
                ),
                FeedbackCard(
                  title: 'Great School Experience',
                  feedback:
                      'I had a wonderful time studying at Symbiosis School. The teachers are excellent, and the facilities are top-notch.',
                  authorName: 'John Doe',
                  date: 'July 25, 2023',
                ),
                FeedbackCard(
                  title: 'Great School Experience',
                  feedback:
                      'I had a wonderful time studying at Symbiosis School. The teachers are excellent, and the facilities are top-notch.',
                  authorName: 'John Doe',
                  date: 'July 25, 2023',
                ),
                FeedbackCard(
                  title: 'Great School Experience',
                  feedback:
                      'I had a wonderful time studying at Symbiosis School. The teachers are excellent, and the facilities are top-notch.',
                  authorName: 'John Doe',
                  date: 'July 25, 2023',
                ),
                FeedbackCard(
                  title: 'Great School Experience',
                  feedback:
                      'I had a wonderful time studying at Symbiosis School. The teachers are excellent, and the facilities are top-notch.',
                  authorName: 'John Doe',
                  date: 'July 25, 2023',
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          CarouselIndicator(
            color: Colors.grey,
            activeColor: Colors.black,
            count: 6,
            index: _currentIndex,
            width: 12,
            height: 12,
            cornerRadius: 100,
          ),
        ],
      ),
    );
  }
}
