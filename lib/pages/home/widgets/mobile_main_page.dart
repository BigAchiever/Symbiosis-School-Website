import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/hero_image_cards.dart';

class MobileMainPage extends StatelessWidget {
  const MobileMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
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
                    title: 'Building better bonds between dads and their kids',
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
                    title: 'Building better bonds between dads and their kids',
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
    );
  }
}
