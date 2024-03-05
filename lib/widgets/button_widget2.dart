import 'package:flutter/material.dart';
import 'package:schooll_website/layout/appbar_and_layout.dart';

class ButtonWidget2 extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;

  const ButtonWidget2({
    super.key,
    required this.text,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0.0),
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.white,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: onpressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: "Magic Brush",
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
