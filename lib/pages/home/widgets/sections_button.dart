import 'package:flutter/material.dart';

Widget sectionButtonsWidget(
  BuildContext context,
  String title,
  int index,
  Function(int) onSectionButtonPressed,
  bool isSelected,
) {
  final Size size = MediaQuery.of(context).size;
  return SizedBox(
    width: size.width,
    height: size.height / 12,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(
          isSelected ? Colors.yellow : Colors.white,
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.yellow;
            }
            return isSelected ? Colors.yellow : Colors.white;
          },
        ),
      ),
      onPressed: () {
        onSectionButtonPressed(index);
      },
      child: Text(
        title,
        style: TextStyle(
          fontSize: size.width / 80,
          color: isSelected ? Colors.black : Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
