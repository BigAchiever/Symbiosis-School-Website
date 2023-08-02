import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String discription;
  const CardContainer(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.discription});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2,
      width: size.width / 3.5,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 0,
            offset: Offset(-10, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: "Dan Sirf Bold",
                  fontWeight: FontWeight.w600,
                  backgroundColor: Colors.yellow,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                subtitle.toUpperCase(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: "Dan Sirf Bold",
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                discription,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Dan Sirf",
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}
