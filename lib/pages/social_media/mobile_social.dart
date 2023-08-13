import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:schooll_website/layout/mobile_footer.dart';

import '../../widgets/bottom_picture_tab.dart';
import '../../widgets/button1_widget.dart';
import '../home/widgets/social_media_card.dart';

class MobileSocialMedia extends StatefulWidget {
  const MobileSocialMedia({super.key});

  @override
  State<MobileSocialMedia> createState() => _MobileSocialMediaState();
}

class _MobileSocialMediaState extends State<MobileSocialMedia>
    with TickerProviderStateMixin {
  bool showMoreCards = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height / 1.5,
              width: double.infinity,
              color: const Color(0xffFFCD02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Lottie.asset(
                    "assets/image/car.json",
                    reverse: true,
                    fit: BoxFit.contain,
                    height: size.height / 4,
                  ),
                  SizedBox(
                    width: size.width / 1.4,
                    child: Text(
                      "WELCOME TO THE COMMUNITY OF X".toUpperCase(),
                      style: TextStyle(
                        fontSize: size.width / 18,
                        fontFamily: "Dan Sirf Bold",
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "#SCHOOLOFSYMBIOSIS".toUpperCase(),
                    style: TextStyle(
                      fontSize: size.width / 10,
                      fontFamily: "Magic Brush",
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: size.width / 1.4,
                    child: Text(
                      "We do good with others, by others.",
                      style: TextStyle(
                        fontSize: size.width / 20,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: showMoreCards ? size.height * 2 : size.height * 1.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xfff8f8f8),
                image: DecorationImage(
                  image: AssetImage("assets/image/dot.png"),
                  repeat: ImageRepeat.repeat,
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const AnimatedSize(
                      duration: Duration(milliseconds: 500),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Wrap(
                          spacing: 10.0,
                          alignment: WrapAlignment.center,
                          runSpacing: 30.0,
                          children: [
                            SocialMediaCard(
                              description:
                                  "Image is everything. We are a community of photographers, videographers, and editors. We are the ones who capture the moments that matter.",
                              image: "assets/image/dads.png",
                            ),
                            SocialMediaCard(
                              description:
                                  "Image is everything. We are a community of photographers, videographers, and editors. We are the ones who capture the moments that matter.",
                              image: "assets/image/dads.png",
                            ),
                            SocialMediaCard(
                              description:
                                  "the moments that matter. Image is everything. We are a community of photographers, videographers, and editors. We are the ones who capture the moments that matter.",
                              image: "assets/image/dads.png",
                            ),
                            SocialMediaCard(
                              description:
                                  "Image is everything. We are a community of photographers, videographers, and editors. We are the ones who capture the moments that matter.",
                              image: "assets/image/dads.png",
                            ),
                            SocialMediaCard(
                              description:
                                  "Image is everything. We are a community of photographers, videographers, and editors. We are the ones who capture the moments that matter.",
                              image: "assets/image/dads.png",
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    if (showMoreCards)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 20.0,
                          runSpacing: 30.0,
                          children: [
                            FadeTransition(
                              opacity: CurvedAnimation(
                                parent: AnimationController(
                                  vsync: this,
                                  duration: const Duration(milliseconds: 500),
                                )..forward(),
                                curve: Curves.easeIn,
                              ),
                              child: const SocialMediaCard(
                                description:
                                    "Image is everything. We are a community of photographers, videographers, and editors. We are the ones who capture the moments that matter.",
                                image: "assets/image/dads.png",
                              ),
                            ),
                            FadeTransition(
                              opacity: CurvedAnimation(
                                parent: AnimationController(
                                  vsync: this,
                                  duration: const Duration(milliseconds: 500),
                                )..forward(),
                                curve: Curves.easeIn,
                              ),
                              child: const SocialMediaCard(
                                description:
                                    "Image is everything. We are a community of photographers, videographers, and editors. We are the ones who capture the moments that matter.",
                                image: "assets/image/dads.png",
                              ),
                            ),
                            FadeTransition(
                              opacity: CurvedAnimation(
                                parent: AnimationController(
                                  vsync: this,
                                  duration: const Duration(milliseconds: 500),
                                )..forward(),
                                curve: Curves.easeIn,
                              ),
                              child: const SocialMediaCard(
                                description:
                                    "Image is everything. We are a community of photographers, videographers, and editors. We are the ones who capture the moments that matter.",
                                image: "assets/image/dads.png",
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Visibility(
              visible: showMoreCards == true,
              child: Text(
                "Visit us on Instagram for more!",
                style: TextStyle(
                  fontSize: size.width / 20,
                  fontFamily: "Dan Sirf Bold",
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ButtonWidget1(
              text: showMoreCards == true ? "Visit Us" : "Load More!",
              onpressed: () {
                setState(() {
                  showMoreCards = !showMoreCards;
                });
              },
            ),
            Container(
              width: double.infinity,
              color: const Color(0xfff8f8f8),
              child: const BottomPictureTab(),
            ),
            const MobileFootertab()
          ],
        ),
      ),
    );
  }
}
