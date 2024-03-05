import 'package:flutter/material.dart';
import 'package:schooll_website/layout/appbar_and_layout.dart';
import 'package:schooll_website/layout/footer.dart';
import 'package:schooll_website/pages/about/tabs/backstory_tab.dart';
import 'package:schooll_website/pages/about/widgets/card_widget.dart';
import 'package:schooll_website/widgets/bottom_picture_tab.dart';

import 'mobile_about.dart';
import 'models/values_model.dart';
import 'widgets/values_card.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {
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
      body: AppbarWidget(
        selectedIndex: 1,
        mobileBody: const MobileAbout(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: size.height / 1.4,
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
                          fontSize: size.width / 60,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "What's our\nDeal?",
                        style: TextStyle(
                          fontSize: size.width / 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontFamily: "Magic Brush",
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 500,
                        child: Text(
                          "We teach people how to solve the challenges they care about, through design – our classroom is the world around us.",
                          style: TextStyle(
                            fontSize: size.width / 75,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
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
                        height: size.height / 1.2,
                        width: size.width,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: size.height * 3,
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
                    left: 200,
                    top: 700,
                    child: CardContainer(
                      title: 'understanding',
                      subtitle:
                          "Taking messy, complex\nchallenges and making\nsense of them",
                      discription:
                          "Those wicked problems that feel impossible to\nresolve are perfect for School of X!\nWe help youbuild the skills you need\nto see your challenges with fresh eyes,\nand unlock new ways forward, through\nsimple tools and activities.",
                    ),
                  ),
                  const Positioned(
                    right: 200,
                    bottom: 850,
                    child: CardContainer(
                      title: 'understanding',
                      subtitle:
                          "Taking messy, complex\nchallenges and making\nsense of them",
                      discription:
                          "Those wicked problems that feel impossible to\nresolve are perfect for School of X!\nWe help youbuild the skills you need\nto see your challenges with fresh eyes,\nand unlock new ways forward, through\nsimple tools and activities.",
                    ),
                  ),
                  const Positioned(
                    left: 200,
                    bottom: 500,
                    child: CardContainer(
                      title: 'understanding',
                      subtitle:
                          "Taking messy, complex\nchallenges and making\nsense of them",
                      discription:
                          "Those wicked problems that feel impossible to\nresolve are perfect for School of X!\nWe help youbuild the skills you need\nto see your challenges with fresh eyes,\nand unlock new ways forward, through\nsimple tools and activities.",
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height / 1.5,
                width: size.width / 1.2,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "What we Teach".toUpperCase(),
                      style: const TextStyle(
                        fontFamily: "Magic Brush",
                        fontSize: 48,
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                  ],
                ),
              ),
              const BackstoryTab(),
              Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: const BottomPictureTab()),
              const FooterTab(),
            ],
          ),
        ),
      ),
    );
  }
}
