import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:symbiosis_school_jabalpur/layout/footer/mobile_footer.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/mobile_feedback.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/mobile_school_info.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/mobile_sections.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/mobile_social_media.dart';
import '../../widgets/bottom_picture_tab.dart';
import 'widgets/hero_image_cards.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
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
      backgroundColor: const Color(0xffFFCD02),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  width: size.width / 1.1,
                  child: Column(
                    children: [
                      Text(
                        "DESIGNING A BETTER",
                        style: TextStyle(
                          fontSize: size.width / 12,
                          color: Colors.black,
                          fontFamily: "Magic Brush",
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "TOMORROW, TOGETHER",
                        style: TextStyle(
                          fontSize: size.width / 6,
                          color: Colors.black,
                          fontFamily: "Magic Brush",
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: size.width / 1.2,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "Symbiosis Group of Schools, Jabalpur – Nurturing Future Leaders",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Sans Serif",
                                      fontSize: size.width / 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextSpan(
                                  text: " Since 2003",
                                  style: TextStyle(
                                      fontSize: size.width / 20,
                                      color: Colors.black,
                                      fontFamily: "Sans Serif",
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: -0.1,
                        child: const CustomCard(
                          imageUrl: "assets/image/dads.png",
                          title:
                              'Building better bonds between dads and their kids, happily ever after',
                          borderRadius: 20.0,
                          padding: 12.0,
                        )
                            .animate(
                              onPlay: (controller) => controller.repeat(),
                            )
                            .shake(
                              hz: 1,
                              delay: 2000.ms,
                              duration: const Duration(seconds: 2),
                              curve: Curves.ease,
                            ),
                      ),
                      Transform.rotate(
                        angle: 0.1,
                        child: const CustomCard(
                          imageUrl: "assets/image/dads.png",
                          title:
                              'Building better bonds between dads and their kids',
                          borderRadius: 20.0,
                          padding: 12.0,
                        )
                            .animate(
                              onPlay: (controller) => controller.repeat(),
                            )
                            .shake(
                              hz: 1,
                              delay: 2000.ms,
                              duration: const Duration(seconds: 2),
                              curve: Curves.ease,
                            ),
                      ),
                      Transform.rotate(
                        angle: -0.1,
                        child: const CustomCard(
                          imageUrl: "assets/image/dads.png",
                          title:
                              'Building better bonds between dads and their kids',
                          borderRadius: 20.0,
                          padding: 12.0,
                        )
                            .animate(
                              onPlay: (controller) => controller.repeat(),
                            )
                            .shake(
                              hz: 1,
                              delay: 2000.ms,
                              duration: const Duration(seconds: 2),
                              curve: Curves.ease,
                            ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Scroll right ->",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const MobileFeedBack(),
          const MobileSchoolInfo(),
          const MobileSection(),
          const MobileSocialMediaHome(),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: const BottomPictureTab(),
          ),
          const MobileFootertab(),
        ],
      ),
    );
  }
}
