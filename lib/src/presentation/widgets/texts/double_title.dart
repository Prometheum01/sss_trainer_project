import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

class DoubleTitle extends StatelessWidget {
  const DoubleTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: ColorConstants.black.toColor,
        ),
        children: [
          TextSpan(
            text: "\n$subtitle",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: ColorConstants.onyx.toColor,
            ),
          ),
        ],
      ),
    );
  }
}
