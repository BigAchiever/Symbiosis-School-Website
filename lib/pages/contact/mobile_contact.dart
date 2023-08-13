import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:schooll_website/layout/mobile_footer.dart';

import '../../widgets/bottom_picture_tab.dart';
import 'widgets/card.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xffFFCD02),
              height: size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width / 1.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Connect with us".toUpperCase(),
                          style: TextStyle(
                            fontSize: size.width / 18,
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
                            fontSize: size.width / 10,
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
                            fontSize: size.width / 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  LottieBuilder.asset(
                    "assets/image/ani2.json",
                    // fit: BoxFit.contain,
                    height: 300,
                    width: 300,
                  )
                ],
              ),
            ),
            Container(
              color: const Color(0xfff8f8f8),
              height: size.height * 2.0,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: size.width / 1.2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "We would like to hear form you".toUpperCase(),
                              style: TextStyle(
                                fontSize: size.width / 10,
                                fontFamily: "Magic Brush",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "If you'd like to take part in our programmes, or have any questions about the School of X, go ahead and ask away!",
                              style: TextStyle(
                                fontSize: size.width / 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "School of X\n(DesignSingapore Council)",
                              style: TextStyle(
                                fontSize: size.width / 20,
                                fontFamily: "Dan Sirf Bold",
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "National Design Centre\n111 Middle Road #04-01\nSingapore 188969",
                              style: TextStyle(
                                fontSize: size.width / 20,
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
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "View on google maps".toUpperCase(),
                                  style: TextStyle(
                                    fontSize: size.width / 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                          width: size.width / 1.1,
                          height: size.height * 1.2,
                          child: ContactUsCard())
                    ],
                  ),
                ],
              ),
            ),
            const BottomPictureTab(),
            const MobileFootertab()
          ],
        ),
      ),
    );
  }
}
