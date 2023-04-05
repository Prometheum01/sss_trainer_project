import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

class CustomOutlineInputBorders extends OutlineInputBorder {
  CustomOutlineInputBorders.textFieldBorder()
      : super(
          borderSide: BorderSide(
            color: ColorConstants.lightGrey.toColor,
            strokeAlign: 1.5,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        );
}
