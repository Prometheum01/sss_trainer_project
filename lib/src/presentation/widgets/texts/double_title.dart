import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

class DoubleTitle extends StatelessWidget {
  const DoubleTitle({
    super.key,
    required this.title,
    required this.subtitle,
    this.lightTitle = false,
  });

  final String title, subtitle;
  final bool lightTitle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontSize: lightTitle ? 20 : 30,
              fontWeight: FontWeight.w600,
              color: ColorConstants.black.toColor,
            ),
        children: [
          TextSpan(
            text: "\n$subtitle",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontSize: lightTitle ? 11 : 20,
                  fontWeight: FontWeight.w400,
                  color: ColorConstants.onyx.toColor,
                ),
          ),
        ],
      ),
    );
  }
}
