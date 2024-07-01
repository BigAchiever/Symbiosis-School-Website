import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'feedback_card.dart';

class MobileFeedBack extends StatefulWidget {
  const MobileFeedBack({super.key});

  @override
  _MobileFeedBackState createState() => _MobileFeedBackState();
}

class _MobileFeedBackState extends State<MobileFeedBack> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 1.2,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffF8F8F8),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            SvgPicture.asset(
              "assets/image/puzzle.svg",
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 30),
            Text(
              "We're Hit",
              style: TextStyle(
                fontSize: size.width / 8,
                color: Colors.black,
                fontFamily: "Magic Brush",
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width / 1.2,
              child: const Text(
                "We hate to blow our own trumpets - so listen to what others say about us instead!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                height: size.height / 2,
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
              ],
            ),
            const SizedBox(height: 30),
            CarouselIndicator(
              color: Colors.grey,
              activeColor: Colors.black,
              count: 3,
              index: _currentIndex,
              width: 12,
              height: 12,
              cornerRadius: 100,
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
