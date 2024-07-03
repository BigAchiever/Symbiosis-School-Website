import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:schooll_website/layout/appbar_and_layout.dart';
import 'package:schooll_website/layout/footer.dart';
import 'package:schooll_website/pages/home/widgets/social_media_card.dart';
import 'package:schooll_website/pages/social_media/mobile_social.dart';
import 'package:schooll_website/widgets/bottom_picture_tab.dart';
import 'package:schooll_website/widgets/button1_widget.dart';

import '../../layout/responsive.dart';

class SocialMediaPage extends StatefulWidget {
  const SocialMediaPage({super.key});

  @override
  _SocialMediaPageState createState() => _SocialMediaPageState();
}

class _SocialMediaPageState extends State<SocialMediaPage>
    with TickerProviderStateMixin {
  bool showMoreCards = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFFCD02),
      body: AppbarWidget(
        selectedIndex: 2,
        mobileBody: const MobileSocialMedia(),
        body: ListView(
            physics: BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.normal),
            children: [
              Column(
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
                          height: size.height / 3,
                          width: size.width / 2,
                        ),
                        Text(
                          "WELCOME TO THE COMMUNITY OF X".toUpperCase(),
                          style: TextStyle(
                            fontSize: size.width / 60,
                            fontFamily: "Dan Sirf Bold",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "#SCHOOLOFSYMBIOSIS".toUpperCase(),
                          style: TextStyle(
                            fontSize: size.width / 20,
                            fontFamily: "Magic Brush",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "We do good with others, by others.",
                          style: TextStyle(
                            fontSize: size.width / 80,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: showMoreCards ? size.height * 2 : size.height * 1.3,
                    width: double.infinity,
                    color: const Color(0xfff8f8f8),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 200.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AnimatedSize(
                            duration: Duration(milliseconds: 500),
                            child: Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 20.0,
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
                          const SizedBox(
                            height: 30,
                          ),
                          if (showMoreCards)
                            Wrap(
                              alignment: WrapAlignment.center,
                              spacing: 20.0,
                              runSpacing: 30.0,
                              children: [
                                FadeTransition(
                                  opacity: CurvedAnimation(
                                    parent: AnimationController(
                                      vsync: this,
                                      duration:
                                          const Duration(milliseconds: 500),
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
                                      duration:
                                          const Duration(milliseconds: 500),
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
                                      duration:
                                          const Duration(milliseconds: 500),
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
                          const SizedBox(
                            height: 40,
                          ),
                          ButtonWidget1(
                            text: showMoreCards == true
                                ? "Visit Us"
                                : "Load More!",
                            onpressed: () {
                              setState(() {
                                showMoreCards = !showMoreCards;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Visibility(
                            visible: showMoreCards == true,
                            child: Text(
                              "Visit us on Instagram for more!",
                              style: TextStyle(
                                fontSize: size.width / 80,
                                fontFamily: "Dan Sirf Bold",
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: const Color(0xfff8f8f8),
                    child: const BottomPictureTab(),
                  ),
                  const FooterTab()
                ],
              ),
            ]),
      ),
    );
  }
}
