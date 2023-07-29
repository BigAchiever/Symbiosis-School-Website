import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schooll_website/pages/home/widgets/Sections_button.dart';

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

      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final currentSection = sections[_selectedIndex];

    return Container(
      height: 800,
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
                  height: size.height / 1.2,
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
                        const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Find your\nplace in the\nSchool of X",
                            style: TextStyle(
                              fontSize: 64,
                              color: Colors.white,
                              fontFamily: "Magic Brush",
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "What's your interest?",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // from sections_button.dart file
                        sectionButtonsWidget(
                          context,
                          "using my design skills",
                          1,
                          onSectionButtonPressed,
                          _selectedIndex == 1,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        sectionButtonsWidget(
                          context,
                          "using my coding skills",
                          2,
                          onSectionButtonPressed,
                          _selectedIndex == 2,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        sectionButtonsWidget(
                          context,
                          "using my business skills",
                          3,
                          onSectionButtonPressed,
                          _selectedIndex == 3,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height / 1.05,
                  width: size.width / 2.6,
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
                        width: 100,
                      ),
                      const SizedBox(height: 100),
                      SizedBox(
                        width: size.width / 3,
                        child: Text(
                          currentSection.title,
                          style: const TextStyle(
                            fontSize: 48,
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
                          fontSize: 24,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            child: Container(
              height: size.height / 4.5,
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
            ),
          )
        ],
      ),
    );
  }
}
