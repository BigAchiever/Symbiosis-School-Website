import 'package:flutter/material.dart';
import 'package:schooll_website/layout/mobile_footer.dart';
import 'package:schooll_website/pages/about/tabs/backstory_tab.dart';

import '../../widgets/bottom_picture_tab.dart';
import 'models/values_model.dart';
import 'widgets/card_widget.dart';
import 'widgets/values_card.dart';

class MobileAbout extends StatefulWidget {
  const MobileAbout({super.key});

  @override
  State<MobileAbout> createState() => _MobileAboutState();
}

class _MobileAboutState extends State<MobileAbout> {
  late Image image1;

  // late Image image2;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset(
      'assets/image/tower.png',
    );
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFFCD02),
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height / 1.5,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        'ABOUT THE SCHOOL',
                        style: TextStyle(
                            fontSize: size.width / 16,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff212529),
                            fontFamily: "Sans Sirf Bold"),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: size.width / 1.2,
                        child: Text(
                          "What's our\nDeal?",
                          style: TextStyle(
                            fontSize: size.width / 8,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff212529),
                            fontFamily: "Magic Brush",
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: size.width / 1.2,
                        child: Text(
                          "We teach people how to solve the challenges they care about, through design – our classroom is the world around us.",
                          style: TextStyle(
                            fontSize: size.width / 18,
                            fontWeight: FontWeight.normal,
                            color: const Color(0xff212529),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ]),
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Transform.scale(
                    scale: 2,
                    child: Transform.rotate(
                      angle: -0.4,
                      child: Container(
                        height: size.height / 2.8,
                        width: size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: size.height,
                      width: size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: image1.image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 150,
                    bottom: 150,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        reverse: false,
                        child: Row(
                          children: [
                            CardContainer(
                              title: 'understanding',
                              subtitle:
                                  "Taking messy, complex\nchallenges and making\nsense of them",
                              description:
                                  "Those wicked problems that feel impossible to resolve are perfect for School of X! We help you build the skills you need to see your challenges with fresh eyes, and unlock new ways forward, through simple tools and activities.",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CardContainer(
                              title: 'understanding',
                              subtitle:
                                  "Taking messy, complex\nchallenges and making\nsense of them",
                              description:
                                  "Those wicked problems that feel impossible to resolve are perfect for School of X! We help you build the skills you need to see your challenges with fresh eyes, and unlock new ways forward, through simple tools and activities.",
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            CardContainer(
                              title: 'understanding',
                              subtitle:
                                  "Taking messy, complex\nchallenges and making\nsense of them",
                              description:
                                  "Those wicked problems that feel impossible to resolve are perfect for School of X! We help you build the skills you need to see your challenges with fresh eyes, and unlock new ways forward, through simple tools and activities.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  // height: size.height * 1.6,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        "Values and Philosophy".toUpperCase(),
                        style: const TextStyle(
                          fontFamily: "Magic Brush",
                          fontSize: 40,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Wrap(
                        alignment: WrapAlignment.spaceEvenly,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        runSpacing: 30,
                        spacing: 20,
                        children: List.generate(
                          contentList.length,
                          (index) {
                            final contentData = contentList[index];
                            return ContentCard(
                              iconPath: contentData.iconPath,
                              title: contentData.title,
                              description: contentData.description,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
              const BackstoryTab(),
              Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: const BottomPictureTab()),
              const MobileFootertab(),
            ],
          ),
        ]),
      ]),
    );
  }
}
