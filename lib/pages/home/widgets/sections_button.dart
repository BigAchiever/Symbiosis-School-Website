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
        backgroundColor: MaterialStateProperty.all<Color>(
          isSelected ? Colors.yellow : Colors.white,
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
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
        title.toUpperCase(),
        style: TextStyle(
          fontSize: size.width / 90,
          color: isSelected ? Colors.black : Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
