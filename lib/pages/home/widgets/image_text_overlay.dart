import 'dart:ui'; // Import this for ImageFiltered
import 'package:flutter/material.dart';

class ImageWithTextOverlay extends StatelessWidget {
  final Size size;
  final String imageUrl;
  final String title;

  const ImageWithTextOverlay({
    Key? key,
    required this.size,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12)),
      height: size.height / 1.7,
      width: size.width / 1.1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Blurred image as placeholder
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                color: Colors.cyan.withOpacity(0.5),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
            // Actual image with FadeInImage
            // FadeInImage(
            //   placeholder: AssetImage(imageUrl), // Same image as placeholder
            //   image: AssetImage(imageUrl),
            //   fit: BoxFit.cover,
            //   fadeInDuration: const Duration(milliseconds: 500),
            //   placeholderErrorBuilder: (context, error, stackTrace) {
            //     return Container(color: Colors.cyan.withOpacity(0.5));
            //   },
            //   imageErrorBuilder: (context, error, stackTrace) {
            //     return Container(color: Colors.cyan.withOpacity(0.5));
            //   },
            // ),
            // Column with text
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                SizedBox(
                  width: size.width / 1.3,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontFamily: "Magic Brush",
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(5.0, 5.0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
