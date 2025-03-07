import 'package:flutter/material.dart';
import 'package:symbiosis_school_jabalpur/layout/mobile_footer.dart';

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
      backgroundColor: const Color(0xffFFCD02),
      body: ListView(
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.normal),
          children: [
            Column(
              children: [
                Container(
                  // height: size.height / 1.6,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xffFFCD02),
                    // image: DecorationImage(
                    //     fit: BoxFit.cover,
                    //     // scale: 1.0,
                    //     image: AssetImage("assets/image/social-media.png"))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Lottie.asset(
                      //   "assets/image/car.json",
                      //   reverse: true,
                      //   fit: BoxFit.contain,
                      //   height: size.height / 4,
                      // ),
                      Image.asset(
                        "assets/image/social-media.png",
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // SizedBox(
                      //   width: size.width / 1.4,
                      //   child: Text(
                      //     "WELCOME TO THE COMMUNITY OF SYMBIOSIANS"
                      //         .toUpperCase(),
                      //     style: TextStyle(
                      //       fontSize: size.width / 18,
                      //       color: Colors.black,
                      //       fontFamily: "Dan Sirf Bold",
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //     textAlign: TextAlign.center,
                      //   ),
                      // ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "#SCHOOLOFSYMBIOSIS".toUpperCase(),
                        style: TextStyle(
                          fontSize: size.width / 10,
                          color: Colors.black,
                          fontFamily: "Magic Brush",
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      // Spacer(),
                      SizedBox(
                        width: size.width / 1.4,
                        child: Text(
                          "We do good with others, by others.",
                          style: TextStyle(
                              fontSize: size.width / 20,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontFamily: " Dan Sirf"),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
                Container(
                  // height: showMoreCards ? size.height * 2 : size.height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xfff8f8f8),
                    image: DecorationImage(
                      image: AssetImage("assets/image/dot.png"),
                      repeat: ImageRepeat.repeat,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const AnimatedSize(
                          duration: Duration(milliseconds: 800),
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
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: const Color(0xfff8f8f8),
                ),
                Container(
                  width: double.infinity,
                  color: const Color(0xfff8f8f8),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Visibility(
                        visible: showMoreCards == true,
                        child: Text(
                          "Visit us on instagram for more!",
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
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: const Color(0xfff8f8f8),
                  child: const BottomPictureTab(),
                ),
                const MobileFootertab()
              ],
            ),
          ]),
    );
  }
}
