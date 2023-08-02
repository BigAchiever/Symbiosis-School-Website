import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BackstoryTab extends StatelessWidget {
  const BackstoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1.1,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AutoSizeText(
            "Our backstory".toUpperCase(),
            maxFontSize: 24,
            minFontSize: 20,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 24,
              fontFamily: "Dan Sirf Bold",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          AutoSizeText(
            "BRINGING DESIGN IMPACT TO\nYOUR COMMUNITY".toUpperCase(),
            maxFontSize: 48,
            minFontSize: 30,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 48,
              fontFamily: "Magic Brush",
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const AutoSizeText(
            "School of X was established by DesignSingapore Council in 2020, to equip\nSingaporeans with the design thinking skills to co-create better living experiences.\nSchool of X supports three of the strategic thrusts set out in “Design 2025”, the\ndesign masterplan for Singapore:",
            maxFontSize: 18,
            minFontSize: 14,
            maxLines: 4,
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          // Carousel Slider
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOut,
              viewportFraction: 0.3,
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: true,
            ),
            items: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                width: 500,
              ),
              Container(
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
