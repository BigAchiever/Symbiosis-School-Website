import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/text_slider.dart';

import '../../../widgets/button1_widget.dart';
import '../models/content_model.dart';
import 'image_text_overlay.dart';

class MobileSection extends StatefulWidget {
  const MobileSection({super.key});

  @override
  State<MobileSection> createState() => _MobileSectionState();
}

class _MobileSectionState extends State<MobileSection> {
  int _selectedIndex = 0;

  void onSectionButtonPressed(int index) {
    setState(() => _selectedIndex = index);
    if (kDebugMode) print(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final currentSection = sections[_selectedIndex];

    return Container(
      width: double.infinity,
      decoration:
          const BoxDecoration(color: Colors.black), // Simplified background
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            SizedBox(
              width: size.width / 1.2,
              child: Text(
                "Find your place in our school",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.width / 10,
                  fontFamily: "Magic Brush",
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "What's your interest?",
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width / 24,
              ),
            ),
            const SizedBox(height: 30),
            TextSlider(
              onSectionSelected: onSectionButtonPressed,
              selectedIndex: _selectedIndex,
            ),
            const SizedBox(height: 30),
            ImageWithTextOverlay(
              title: currentSection.title,
              size: size,
              imageUrl: currentSection.imageUrl,
            ),
            const SizedBox(height: 30),
            Container(
              width: size.width / 1.1,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                border: Border(
                  left: BorderSide(color: Colors.black, width: 4.0),
                  bottom: BorderSide(color: Colors.black, width: 4.0),
                  top: BorderSide(color: Colors.black, width: 1.0),
                  right: BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 70),
                    SvgPicture.asset(
                      "assets/image/iti.svg",
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: size.width / 1.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Interested in doing ITI? Join us to know more!",
                            style: TextStyle(
                              fontSize: size.width / 14,
                              color: const Color(0xff212529),
                              fontFamily: "Magic Brush",
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "We are here to help you with your ITI journey. Join us to know more about ITI and how to get started.",
                            style: TextStyle(
                              fontSize: size.width / 20,
                              color: const Color(0xff212529),
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonWidget1(text: "Join Us", onpressed: () {}),
                      ],
                    ),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
