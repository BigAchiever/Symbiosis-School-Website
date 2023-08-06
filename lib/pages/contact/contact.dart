import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:schooll_website/layout/appbar_and_layout.dart';
import 'package:schooll_website/layout/footer.dart';
import 'package:schooll_website/pages/contact/widgets/card.dart';

import '../../widgets/bottom_picture_tab.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFFCD02),
      body: AppbarWidget(
        selectedIndex: 3,
        body: SingleChildScrollView(
          child: Column(
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
                      "assets/image/contact.json",
                      height: size.height / 1.2,
                      width: size.width / 3,
                    )
                  ],
                ),
              ),
              Container(
                color: const Color(0xfff8f8f8),
                height: size.height * 1.2,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: size.width / 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "We would like to hear form you".toUpperCase(),
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
                            "If you'd like to take part in our programmes, or have any questions about the School of X, go ahead and ask away!",
                            style: TextStyle(
                              fontSize: size.width / 80,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "School of X\n(DesignSingapore Council)",
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
                            "National Design Centre\n111 Middle Road #04-01\nSingapore 188969",
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
                                  borderRadius: BorderRadius.circular(8),
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
                        height: size.height / 1.1,
                        child: ContactUsCard())
                  ],
                ),
              ),
              Container(
                  width: double.infinity,
                  color: const Color(0xfff8f8f8),
                  child: const BottomPictureTab()),
              const FooterTab()
            ],
          ),
        ),
      ),
    );
  }
}
