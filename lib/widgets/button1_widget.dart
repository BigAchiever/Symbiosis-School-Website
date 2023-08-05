import 'package:flutter/material.dart';

class ButtonWidget1 extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  const ButtonWidget1({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
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
