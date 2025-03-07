import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:symbiosis_school_jabalpur/widgets/contact_details.dart';

class FooterTab extends StatelessWidget {
  const FooterTab({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height / 2.5,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        fontWeight: FontWeight.w500,
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
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "About Us",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Resources",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Social Media",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Feedback",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
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
              "© 2023 Symbiosis Group of Schools. All Rights Reserved.",
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
