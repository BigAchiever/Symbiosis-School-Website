import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:schooll_website/layout/responsive.dart';

class BackstoryTab extends StatelessWidget {
  const BackstoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: ResponsiveLayout.isMobile(context)
          ? size.height * 1.4
          : size.height * 1.1,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: ResponsiveLayout.isMobile(context)
            ? const EdgeInsets.all(12)
            : const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: ResponsiveLayout.isMobile(context)
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              "Our backstory".toUpperCase(),
              maxFontSize: 24,
              minFontSize: 20,
              maxLines: 1,
              style: const TextStyle(
                  fontSize: 24,
                  // fontFamily: "Dan Sirf Bold",
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            AutoSizeText(
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
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: size.width / 1.2,
              child: AutoSizeText(
                "School of X was established by DesignSingapore Council in 2020, to equip Singaporeans with the design thinking skills to co-create better living experiences. School of X supports three of the strategic thrusts set out in “Design 2025”, the design masterplan for Singapore:",
                maxFontSize: 22,
                minFontSize: 14,
                style: TextStyle(
                  fontSize: ResponsiveLayout.isMobile(context) ? 18 : 18,
                ),
                textAlign: ResponsiveLayout.isMobile(context)
                    ? TextAlign.start
                    : TextAlign.center,
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
                viewportFraction:
                    ResponsiveLayout.isMobile(context) ? 0.8 : 0.3,
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
      ),
    );
  }
}
