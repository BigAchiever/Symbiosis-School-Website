import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:symbiosis_school_jabalpur/layout/footer/footer.dart';
import 'package:symbiosis_school_jabalpur/layout/responsive.dart';
import 'package:symbiosis_school_jabalpur/pages/contact/mobile_contact.dart';
import 'package:symbiosis_school_jabalpur/pages/contact/widgets/card.dart';

import '../../widgets/bottom_picture_tab.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFFCD02),
      body: ResponsiveLayout(
        mobileBody: const MobileContact(),
        desktopBody: ListView(
            physics: const BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.normal),
            children: [
              Column(
                children: [
                  Container(
                    color: const Color(0xffFFCD02),
                    height: size.height / 1.3,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: size.width / 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Connect with us".toUpperCase(),
                                style: TextStyle(
                                  fontSize: size.width / 60,
                                  fontFamily: "Dan Sirf Bold",
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Come on and chat with us!".toUpperCase(),
                                style: TextStyle(
                                  fontSize: size.width / 20,
                                  fontFamily: "Magic Brush",
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Got a suggestion? Maybe a question? Don't be shy – go ahead and reach out to us, we're happy to converse!",
                                style: TextStyle(
                                  fontSize: size.width * 0.013,
                                ),
                              ),
                            ],
                          ),
                        ),
                        LottieBuilder.asset(
                          "assets/image/ani2.json",
                          height: size.height / 1.2,
                          width: size.width / 3,
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xfff8f8f8),
                    height: size.height * 1.4,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: size.width / 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "We would like to hear form you"
                                        .toUpperCase(),
                                    style: TextStyle(
                                      fontSize: size.width / 30,
                                      fontFamily: "Magic Brush",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "If you'd like to take part in our programmes, or have any questions about the School of Symbiosis, go ahead and ask away!",
                                    style: TextStyle(
                                      fontSize: size.width / 80,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Symbiosis School Jabalpur\n(India, Madhya Pradesh)",
                                    style: TextStyle(
                                      fontSize: size.width / 78,
                                      fontFamily: "Dan Sirf Bold",
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Affiliated with MP Board and CBSE under the Ministry of Education, Government of India",
                                    style: TextStyle(
                                      fontSize: size.width / 80,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        shadowColor: Colors.transparent,
                                        backgroundColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                            color: Colors.black,
                                            width: 2,
                                            style: BorderStyle.solid,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "View on google maps".toUpperCase(),
                                        style: TextStyle(
                                          fontSize: size.width / 90,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                width: size.width / 2.5,
                                height: size.height / 1.05,
                                child: ContactUsCard())
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const BottomPictureTab()
                      ],
                    ),
                  ),
                  const FooterTab()
                ],
              ),
            ]),
      ),
    );
  }
}
