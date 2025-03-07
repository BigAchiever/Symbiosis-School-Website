import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:symbiosis_school_jabalpur/layout/appbar_and_layout.dart';
import 'package:symbiosis_school_jabalpur/layout/responsive.dart';
import 'package:symbiosis_school_jabalpur/widgets/button1_widget.dart';

class LearnMorePage2 extends StatefulWidget {
  const LearnMorePage2({super.key});

  @override
  State<LearnMorePage2> createState() => _LearnMorePageState();
}

class _LearnMorePageState extends State<LearnMorePage2> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveLayout(
          mobileBody: Container(),
          desktopBody: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
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
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                const VerticalDivider(
                                  color: Colors.green,
                                  thickness: 1,
                                  endIndent: 5,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                SizedBox(
                                  width: size.width / 3.5,
                                  child: Text(
                                    "Got a suggestion? Maybe a question? Don't be shy – go ahead and reach out to us, we're happy to converse!",
                                    style: TextStyle(
                                      fontSize: size.width * 0.013,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ButtonWidget1(
                                  text: "Contact Us", onpressed: () {}),
                              const SizedBox(
                                width: 80,
                              ),
                              ButtonWidget1(
                                  text: "Contact Us", onpressed: () {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/image/dads.png",
                      width: size.width / 3,
                    )
                  ],
                ),
              ),
              Container(
                color: const Color(0xff262544),
                height: size.height / 2,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: size.width / 5,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DESIGNING A BETTER",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontFamily: "Magic Brush",
                                ),
                                textAlign: TextAlign.start,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "A learning system based on formalized teaching but with the help of electronic resources is known as E-learning. While teaching can be based in or out of the classrooms.",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          width: size.width / 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: size.height / 12,
                                width: size.width / 22,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Learn More",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "Magic Brush",
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "A learning system based on formalized teaching but with the help of electronic resources is known as E-learning. While teaching can be based in or out of the classrooms.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: size.height / 12,
                                width: size.width / 22,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Learn More",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "Magic Brush",
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "A learning system based on formalized teaching but with the help of electronic resources is known as E-learning. While teaching can be based in or out of the classrooms.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width / 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: size.height / 12,
                                width: size.width / 22,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Learn More",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: "Magic Brush",
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "A learning system based on formalized teaching but with the help of electronic resources is known as E-learning. While teaching can be based in or out of the classrooms.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
