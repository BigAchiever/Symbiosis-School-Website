import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:schooll_website/widgets/contact_details.dart';

class FooterTab extends StatelessWidget {
  const FooterTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: 300,
          width: double.infinity,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 42, 49, 90),
                            blurRadius: 0,
                            offset: Offset(0, -2),
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 30,
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Image(
                            image: AssetImage('assets/image/logo.png'),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Symbiosis Group\nof Schools",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Magic Brush",
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Established in 2003",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          'assets/image/ig.svg',
                          height: 30,
                          width: 30,
                        ),
                        SvgPicture.asset(
                          'assets/image/yt.svg',
                          height: 30,
                          width: 30,
                        ),
                        SvgPicture.asset(
                          'assets/image/ln.svg',
                          height: 30,
                          width: 30,
                        ),
                        SvgPicture.asset(
                          'assets/image/fb.svg',
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: size.width / 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(height: 10),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Resources",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Social Media",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Feedback",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
                SizedBox(width: size.width / 10),
                const ContactDetails()
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              "© 2021 Symbiosis Group of Schools. All Rights Reserved.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
