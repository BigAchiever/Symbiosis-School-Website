import 'package:flutter/material.dart';

class ButtonWidget1 extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  const ButtonWidget1({super.key, required this.text, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(color: Colors.black, width: 2),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(Colors.grey.shade100),
          overlayColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return Colors.yellow;
              }
              return Colors.yellow;
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
