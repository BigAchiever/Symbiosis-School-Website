import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'school_pics.dart';

class SchoolInformationTab extends StatefulWidget {
  const SchoolInformationTab({super.key});

  @override
  State<SchoolInformationTab> createState() => _SchoolInformationTabState();
}

class _SchoolInformationTabState extends State<SchoolInformationTab> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1.1,
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
              fontSize: size.width / 30,
              fontWeight: FontWeight.normal,
              fontFamily: 'Magic Brush',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width / 2,
            child: Text(
              "Symbiosis Group of Schools, Jabalpur, an initiative dedicated to innovative education, strives to be a dynamic learning environment where students, families, and communities come together to address real-world challenges through creativity, critical thinking, and holistic development.",
              style: TextStyle(
                fontSize: size.width / 80,
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
                        backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.white,
                        ),
                        overlayColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
                            if (states.contains(WidgetState.hovered)) {
                              return Colors.yellow;
                            }
                            return Colors.white;
                          },
                        ),
                      ),
                      onPressed: () {
                        GoRouter.of(context).go(
                            '/symbiosis-higher-secondary-school/learn-more');
                      },
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
                        elevation: WidgetStateProperty.all<double>(0),
                        backgroundColor: WidgetStateProperty.all<Color>(
                          Colors.white,
                        ),
                        overlayColor: WidgetStateProperty.resolveWith<Color>(
                          (Set<WidgetState> states) {
                            if (states.contains(WidgetState.hovered)) {
                              return Colors.yellow;
                            }
                            return Colors.white;
                          },
                        ),
                      ),
                      onPressed: () {
                        GoRouter.of(context).go(
                            '/symbiosis-senior-secondary-school/learn-more');
                      },
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
