import 'package:flutter/material.dart';

import 'school_pics.dart';

class SchoolInformationTab extends StatelessWidget {
  const SchoolInformationTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 700,
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
          const Text(
            "Our branches in Jabalpur",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.normal,
              fontFamily: 'Magic Brush',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width / 2,
            child: const Text(
              "The School of X, an initiative of DesignSingapore Council,strives to be a classroom without walls for communities and businesses to solve challenges through design thinking.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
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
                  Container(
                    height: 50,
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
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.yellow;
                            }
                            return Colors.white;
                          },
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Learn More",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Magic Brush",
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
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
                  Container(
                    height: 50,
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
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.yellow;
                            }
                            return Colors.white;
                          },
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Learn More",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Magic Brush",
                          fontSize: 18,
                        ),
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