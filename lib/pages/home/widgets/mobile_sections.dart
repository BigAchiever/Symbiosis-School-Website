import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schooll_website/pages/home/widgets/text_slider.dart';

import '../../../widgets/button1_widget.dart';
import '../models/content_model.dart';

class MobileSection extends StatefulWidget {
  const MobileSection({super.key});

  @override
  State<MobileSection> createState() => _MobileSectionState();
}

class _MobileSectionState extends State<MobileSection> {
  late int _selectedIndex = 0;
  bool tapped = false;

  void onSectionButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;

      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentSection = sections[_selectedIndex];
    final Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 2,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/image/dot.png"),
          fit: BoxFit.none,
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 70,
          ),
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
          const SizedBox(
            height: 10,
          ),
          Text(
            "What's your interest?",
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width / 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextSlider(
            onSectionSelected: onSectionButtonPressed,
            selectedIndex: _selectedIndex,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: size.height / 1.7,
            width: size.width / 1.1,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.all(Radius.circular(12)),
            //   color: Colors.white,
            //   border: Border.all(
            //     color: Colors.white,
            //     width: 1.0,
            //   ),
            // ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  //blured image as placeholder
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Image.asset(
                      currentSection.imageUrl,
                      fit: BoxFit.cover,
                      color: Colors.cyan.withOpacity(0.5),
                      colorBlendMode: BlendMode.modulate,
                    ),
                  ),
                  // Actual image with FadeInImage
                  FadeInImage.assetNetwork(
                    placeholder:
                        currentSection.imageUrl, // Same image as placeholder
                    image: currentSection.imageUrl,
                    fit: BoxFit.cover,
                    fadeInDuration: Duration(milliseconds: 500),
                    placeholderErrorBuilder: (context, error, stackTrace) {
                      return Container(color: Colors.cyan.withOpacity(0.5));
                    },
                    imageErrorBuilder: (context, error, stackTrace) {
                      return Container(color: Colors.cyan.withOpacity(0.5));
                    },
                  ),
                  // Column with text
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 40),
                      SizedBox(
                        width: size.width / 1.3,
                        child: Text(
                          currentSection.title,
                          style: const TextStyle(
                            fontSize: 31,
                            color: Colors.white,
                            fontFamily: "Magic Brush",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 60),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            // height: size.height / 1.3,
            width: size.width / 1.1,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.white,
              border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
                bottom: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
                top: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
                right: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  SvgPicture.asset(
                    "assets/image/iti.svg",
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: size.width / 1.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Intrested in doing ITI? Join us to know more!",
                          style: TextStyle(
                            fontSize: size.width / 14,
                            color: const Color(0xff212529),
                            fontFamily: "Magic Brush",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "We are here to help you with your ITI journey. Join us to know more about ITI and how to get started.",
                          style: TextStyle(
                            fontSize: size.width / 20,
                            color: const Color(0xff212529),
                          ),
                          textAlign: TextAlign.start,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonWidget1(text: "Join Us", onpressed: () {}),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
