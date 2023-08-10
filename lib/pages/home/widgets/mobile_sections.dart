import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schooll_website/pages/home/widgets/text_slider.dart';

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
      height: size.height * 1.9,
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
            height: size.height / 1.3,
            width: size.width / 1.1,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
                width: 4.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  currentSection.imageUrl,
                  height: 100,
                  width: size.width / 3,
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: size.width / 1.3,
                  child: Text(
                    currentSection.title,
                    style: const TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      fontFamily: "Magic Brush",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  currentSection.description,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: size.height / 2,
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
          ),
        ],
      ),
    );
  }
}
