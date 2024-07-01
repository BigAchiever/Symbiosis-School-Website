import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:schooll_website/layout/mobile_footer.dart';

import '../../widgets/bottom_picture_tab.dart';
import '../../widgets/dialog.dart';
import 'widgets/card.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    void showCustomDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return CustomDialogBox(
            title: 'Select any one',
            description:
                'Select the school which you want to see on the google maps.',
            leftButtonText: 'Symbiosis Higher Secondary school',
            rightButtonText: 'Symbiosis Senior Secondary school',
            leftButtonLink: 'https://maps.app.goo.gl/zxwPE52aQn78GN4R9',
            onRightButtonPressed: () {
              Navigator.of(context).pop();
            },
          );
        },
      );
    }

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color(0xffFFCD02),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                  ),
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
                              fontFamily: " Dan Sirf"),
                        ),
                      ],
                    ),
                  ),
                  LottieBuilder.asset(
                    "assets/image/ani2.json",
                    // fit: BoxFit.contain,
                    height: 300,
                    width: 300,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xfff8f8f8),
              // height: size.height * 2.0,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 100,
                  ),
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
                              "If you'd like to take part in our programmes, or have any questions about the Schools, go ahead and ask away!",
                              style: TextStyle(
                                fontSize: size.width / 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Symbiosis Higher Secondary School\n(Adhartal,Jabalpur)\n\nSymbiosis Senior Secondary School\n(Maharajpur,Jabalpur)",
                              style: TextStyle(
                                fontSize: size.width / 20,
                                fontFamily: "Dan Sirf Bold",
                                fontWeight: FontWeight.normal,
                              ),
                            ),

                            // Text(
                            //   "National Design Centre\n111 Middle Road #04-01\nSingapore 188969",
                            //   style: TextStyle(
                            //     fontSize: size.width / 20,
                            //   ),
                            // ),
                            const SizedBox(
                              height: 30,
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
                                onPressed: () {
                                  showCustomDialog(context);
                                },
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
