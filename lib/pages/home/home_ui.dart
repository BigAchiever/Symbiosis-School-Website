import 'package:flutter/material.dart';
import 'package:schooll_website/layout/appbar_and_layout.dart';
import 'package:schooll_website/pages/home/widgets/feedback_tab.dart';
import 'package:schooll_website/pages/home/widgets/school_info_tab.dart';
import 'package:schooll_website/pages/home/widgets/sections_tab.dart';
import 'package:schooll_website/pages/home/widgets/social_media_tab.dart';
import 'package:schooll_website/widgets/bottom_picture_tab.dart';

import '../../layout/footer.dart';
import 'widgets/hero_image_cards.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  late Image image1;
  late Image image2;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset("assets/image/paper-background.png");
    image2 = Image.asset("assets/image/hero-background-1.png");
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: AppbarWidget(
        selectedIndex: 1,
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              color: const Color(0xffFFCD02),
              child: Image(
                image: image2.image,
                fit: BoxFit.fill,
                width: size.width,
                height: size.height * 1.6,
              ),
            ),
            Column(
              children: [
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // here is the background assets of the website hero
                      Image(
                        image: image1.image,
                        fit: BoxFit.fill,
                        width: size.width / 1.1,
                        height: size.height * 1.1,
                      ),

                      // content which uses stack to position the text in the hero image
                      Positioned(
                        top: 100,
                        child: SizedBox(
                          width: size.width / 1.5,
                          child: Column(
                            children: [
                              Text(
                                "DESIGNING A BETTER",
                                style: TextStyle(
                                  fontSize: size.width / 30,
                                  color: Colors.black,
                                  fontFamily: "Magic Brush",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                child: Text(
                                  "TOMORROW, TOGETHER",
                                  style: TextStyle(
                                    fontSize: size.width / 20,
                                    color: Colors.black,
                                    fontFamily: "Magic Brush",
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "School of X uses design to help you make a difference.\nTap to see how we’ve helped people like you bring positive change to their\ncommunities.",
                                style: TextStyle(
                                  fontSize: size.width / 80,
                                  color: Colors.black,
                                  fontFamily: "Sans Serif",
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 240,
                        bottom: 90,
                        child: Transform.rotate(
                          angle: -0.1,
                          child: const CustomCard(
                            imageUrl: "assets/image/dads.png",
                            title:
                                'Builing better bonds between dads and their kids, happily ever after',
                            borderRadius: 20.0,
                            padding: 12.0,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 150,
                        child: Transform.rotate(
                          angle: 0.1,
                          child: const CustomCard(
                            imageUrl: "assets/image/dads.png",
                            title:
                                'Builing better bonds between dads and their kids',
                            borderRadius: 20.0,
                            padding: 12.0,
                          ),
                        ),
                      ),

                      Positioned(
                        right: 240,
                        bottom: 100,
                        child: Transform.rotate(
                          angle: -0.1,
                          child: const CustomCard(
                            imageUrl: "assets/image/dads.png",
                            title:
                                'Builing better bonds between dads and their kids',
                            borderRadius: 20.0,
                            padding: 12.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                const SectionsTab(),
                const FeedBackTab(),
                const SchoolInformationTab(),
                const SocialMediaTab(),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: const BottomPictureTab(),
                ),
                const FooterTab()
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
