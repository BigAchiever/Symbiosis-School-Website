import 'package:flutter/material.dart';

import 'school_pics.dart';

class MobileSchoolInfo extends StatelessWidget {
  const MobileSchoolInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 2,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffFFCD02),
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 5,
          ),
          top: BorderSide(
            color: Colors.black,
            width: 5,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Our branches in Jabalpur",
            style: TextStyle(
              fontSize: size.width / 8,
              fontWeight: FontWeight.normal,
              fontFamily: 'Magic Brush',
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: size.width / 1.2,
            child: const Text(
              "The School of X, an initiative of DesignSingapore Council,strives to be a classroom without walls for communities and businesses to solve challenges through design thinking.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  buildSchoolImageWithTriangularShape(
                    'assets/image/dads.png',
                    "Symbiosis Higher\nSecondary School",
                    "Adhartal, jabalpur",
                    context,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width / 1.1,
                    child: const Text(
                      "Symbiosis Higher Secondary School, Adhartal, Jabalpur",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Sans Sirf Bold",
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Learn More".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "Sans Sirf Bold",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              Column(
                children: [
                  buildSchoolImageWithTriangularShape(
                    'assets/image/dads.png',
                    "Symbiosis Senior\nSecondary School",
                    "Maharajpur, Jabalpur",
                    context,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width / 1.1,
                    child: const Text(
                      "Symbiosis Senior Secondary School, Maharajpur, Jabalpur",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Sans Sirf Bold",
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Learn More".toUpperCase(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: "Sans Sirf Bold",
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
