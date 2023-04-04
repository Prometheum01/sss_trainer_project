import 'package:flutter/material.dart';

enum ColorConstants {
  lightGrey(0xFFD9D9D9), //Hint texts, borders.
  teal(0xFF129575), //Elevated Buttons.
  onyx(0xFF121212), // Light black texts.
  black(0xFF000000), // Black bold texts.
  white(0xFFFFFFFF), // White texts.
  orangePeel(0xFFFF9C00), // Text Buttons
  cloudyGrey(0xFF696969), // shadow color.
  ;

  final int value;
  const ColorConstants(this.value);

  Color get toColor => Color(value);
}
