import 'package:flutter/material.dart';

// An example of an alternative way to group text styles
// can be found in the `lib/app_palette.dart` file.
abstract class AppTypography {
  static const body1 = TextStyle(
    fontFamily: "Arcane",
    fontSize: 15,
    letterSpacing: 1.2,
    fontWeight: FontWeight.w600,
  );

  static const body2 = TextStyle(
    fontSize: 16,
    fontFamily: "Arcane",
    letterSpacing: 1.2,
    fontWeight: FontWeight.w600,
  );

  static const body3 = TextStyle(
    fontFamily: "Arcane",
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );

  static const h1 = TextStyle(
    fontSize: 18,
    fontFamily: "Arcane",
    fontWeight: FontWeight.w300,
  );

  static const h2 = TextStyle(
    fontSize: 30,
    fontFamily: "Arcane",
    fontWeight: FontWeight.w500,
  );
}
