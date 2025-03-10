import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:symbiosis_school_jabalpur/layout/responsive.dart';

class BackstoryTab extends StatelessWidget {
  const BackstoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      // height: ResponsiveLayout.isMobile(context)
      //     ? size.height * 1.41
      //     : size.height * 1.1,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: ResponsiveLayout.isMobile(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: AutoSizeText(
              "Our backstory".toUpperCase(),
              maxFontSize: 24,
              minFontSize: 20,
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 24,
                  // fontFamily: "Dan Sirf Bold",
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: AutoSizeText(
              "BRINGING DESIGN IMPACT TO YOUR COMMUNITY".toUpperCase(),
              maxFontSize: 48,
              minFontSize: 30,
              maxLines: 3,
              style: TextStyle(
                fontSize: ResponsiveLayout.isMobile(context) ? 38 : 48,
                fontFamily: "Magic Brush",
                fontWeight: FontWeight.bold,
              ),
              textAlign: ResponsiveLayout.isMobile(context)
                  ? TextAlign.start
                  : TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: SizedBox(
              width: size.width / 1.2,
              child: AutoSizeText(
                "Symbiosis Group of Schools, Jabalpur, was founded in 2003, with a vision to empower students with critical thinking, creativity, and life skills to shape a better future. As a leading educational institution, Symbiosis aligns with national educational goals by fostering innovation, holistic development, and community engagement in Madhya Pradesh:",
                maxFontSize: 22,
                minFontSize: 14,
                style: TextStyle(
                    fontSize: ResponsiveLayout.isMobile(context) ? 18 : 18,
                    fontFamily: " Dan Sirf"),
                textAlign: ResponsiveLayout.isMobile(context)
                    ? TextAlign.start
                    : TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: ResponsiveLayout.isMobile(context) ? 80 : 40,
          ),
          // Carousel Slider
          CarouselSlider(
            options: CarouselOptions(
              height: ResponsiveLayout.isMobile(context) ? 300 : 400,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOut,
              viewportFraction: ResponsiveLayout.isMobile(context) ? 0.8 : 0.3,
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: true,
            ),
            items: [
              Container(
                width: 500,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/image/comingsoon.png"),
                    ),
                    border: Border.all(color: Colors.black, width: 1),
                    color: const Color(0xffFFCD02),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                width: 500,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/image/comingsoon.png"),
                    ),
                    border: Border.all(color: Colors.black, width: 1),
                    color: const Color(0xffFFCD02),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                width: 500,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/image/comingsoon.png"),
                    ),
                    border: Border.all(color: Colors.black, width: 1),
                    color: const Color(0xffFFCD02),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
