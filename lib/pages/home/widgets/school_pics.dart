import 'package:flutter/material.dart';
import 'package:symbiosis_school_jabalpur/layout/responsive.dart';

Widget buildSchoolImageWithTriangularShape(
    String imagePath, String title, String location, BuildContext context) {
  final Size size = MediaQuery.of(context).size;
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        height: ResponsiveLayout.isMobile(context)
            ? size.height / 2.5
            : size.height / 2.2,
        width: ResponsiveLayout.isMobile(context) ? 300 : size.width / 2.8,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          border: const Border(
            bottom: BorderSide(
              color: Colors.black,
              width: 4,
            ),
            left: BorderSide(
              color: Colors.black,
              width: 4,
            ),
            top: BorderSide(
              color: Colors.black,
              width: 1,
            ),
            right: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
      ),
      ResponsiveLayout.isMobile(context)
          ? Container()
          : Positioned(
              right: 0,
              bottom: 0,
              child: ClipPath(
                clipper: ResponsiveLayout.isMobile(context)
                    ? null
                    : _TriangularClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  height: size.height / 1.5,
                  width: size.width / 4.8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SizedBox(
                        width: size.width /
                            2.8, // Same width as the image container
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Magic Brush",
                                      fontSize: size.width / 55,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.end,
                            ),
                            Text(
                              location,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    ],
  );
}

class _TriangularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
