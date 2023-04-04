import 'package:flutter/material.dart';

class PaddingConstants extends EdgeInsets {
  //All
  const PaddingConstants.bigAll() : super.all(32);

  //Horizontal
  const PaddingConstants.bigHorizontal() : super.symmetric(horizontal: 32);

  //Vertical
  const PaddingConstants.bigVertical() : super.symmetric(vertical: 32);
}
