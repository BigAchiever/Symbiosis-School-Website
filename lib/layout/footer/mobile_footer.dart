import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileFootertab extends StatelessWidget {
  const MobileFootertab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          // height: size.height / 1.3,
          width: size.width,
          decoration: const BoxDecoration(
            color: Color(0xffFFCD02),
            border: Border(
              top: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 23, 23, 23),
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Image(
                          image: AssetImage('assets/image/logo.png'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Symbiosis Group\nof Schools",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Magic Brush",
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Established in 2003",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            launchUrl(Uri.parse(
                                'https://www.instagram.com/symbiosis_school_jabalpur/'));
                          },
                          child: SvgPicture.asset(
                            'assets/image/ig.svg',
                            height: 30,
                            width: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            launchUrl(Uri.parse(
                                'https://www.youtube.com/@symbiosis.group.of.schools'));
                          },
                          child: SvgPicture.asset(
                            'assets/image/yt.svg',
                            height: 30,
                            width: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            launchUrl(Uri.parse(
                                'https://www.linkedin.com/company/symbiosis-higher-secondary-school/'));
                          },
                          child: SvgPicture.asset(
                            'assets/image/ln.svg',
                            height: 30,
                            width: 30,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            launchUrl(Uri.parse(
                                'https://www.facebook.com/Symbiosis.school.jabalpur/'));
                          },
                          child: SvgPicture.asset(
                            'assets/image/fb.svg',
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Quick Links",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Magic Brush",
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            context.go('/');
                          },
                          child: const Text(
                            "Home",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            context.go('/about-us');
                          },
                          child: const Text(
                            "About Us",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            context.go('/resources');
                          },
                          child: const Text(
                            "Resources",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            context.go('/social-media');
                          },
                          child: const Text(
                            "Social Media",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            context.go('/contact-us');
                          },
                          child: const Text(
                            "Contact Us",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            context.go('/feedback');
                          },
                          child: const Text(
                            "Feedback",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30),
                // const ContactDetails()
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Center(
            child: SizedBox(
              width: size.width / 1.2,
              child: const Text(
                "© 2023 Symbiosis Group of Schools.\nAll Rights Reserved.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
