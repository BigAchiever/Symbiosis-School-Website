import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/Sections_button.dart';
import 'package:symbiosis_school_jabalpur/widgets/button1_widget.dart';

import '../models/content_model.dart';

class SectionsTab extends StatefulWidget {
  const SectionsTab({super.key});

  @override
  _SectionsTabState createState() => _SectionsTabState();
}

class _SectionsTabState extends State<SectionsTab> {
  late int _selectedIndex = 0;
  bool tapped = false;

  void onSectionButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;

      if (kDebugMode) {
        print(_selectedIndex);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final currentSection = sections[_selectedIndex];

    return Container(
      height: size.height * 1.2,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage("assets/image/dot.png"),
            fit: BoxFit.none,
            repeat: ImageRepeat.repeat),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: -150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: size.height / 1.1,
                  width: size.width / 3.2,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(34.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Find your\nplace in the\nSymbiosis",
                          style: TextStyle(
                            fontSize: size.width / 24,
                            color: Colors.white,
                            fontFamily: "Magic Brush",
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "What's your interest?",
                          style: TextStyle(
                            fontSize: size.width / 90,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // from sections_button.dart file
                        sectionButtonsWidget(
                          context,
                          "Young kids tune into learning.",
                          1,
                          onSectionButtonPressed,
                          _selectedIndex == 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        sectionButtonsWidget(
                          context,
                          "Helping children learn creatively.",
                          2,
                          onSectionButtonPressed,
                          _selectedIndex == 2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        sectionButtonsWidget(
                          context,
                          "Results speak louder than words.",
                          3,
                          onSectionButtonPressed,
                          _selectedIndex == 3,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height / 1.01,
                  width: size.width / 2.5,
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
                      SizedBox(
                        width: size.width / 3,
                        child: Text(
                          currentSection.title,
                          style: TextStyle(
                            fontSize: size.width / currentSection.titleSize,
                            color: const Color(0xff212529),
                            fontFamily: "Magic Brush",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            currentSection.imageUrl,
                            height: size.height * currentSection.imageHeight,
                            width: size.width * currentSection.imageWidth,
                            fit: BoxFit.contain,
                          ),
                          if (currentSection.imageUrl2 != null)
                            Image.asset(
                              currentSection.imageUrl2!,
                              height: size.height * currentSection.imageHeight,
                              width: size.width * currentSection.imageWidth,
                              fit: BoxFit.contain,
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        currentSection.description,
                        style: TextStyle(
                          fontSize: size.width / currentSection.descriptionSize,
                          color: const Color(0xff212529),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      ButtonWidget1(text: "Join us", onpressed: () {})
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            child: Container(
              height: size.height / 3.8,
              width: size.width / 1.5,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
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
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      "assets/image/iti.svg",
                      height: 120,
                      width: 120,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: size.width / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Intrested in doing ITI? Join us to know more!",
                            style: TextStyle(
                              fontSize: size.width / 45,
                              color: const Color(0xff212529),
                              fontFamily: "Magic Brush",
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "We are here to help you with your ITI journey. Join us to know more about ITI and how to get started.",
                            style: TextStyle(
                              fontSize: size.width / 80,
                              color: const Color(0xff212529),
                            ),
                            textAlign: TextAlign.start,
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonWidget1(text: "Join ITI", onpressed: () {}),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
