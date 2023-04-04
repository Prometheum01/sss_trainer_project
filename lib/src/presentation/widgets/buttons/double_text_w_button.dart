import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

class DoubleTextWithButton extends StatelessWidget {
  const DoubleTextWithButton({
    super.key,
    required this.text,
    required this.buttonText,
    this.onPressed,
  });

  final String text, buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.bold, color: ColorConstants.black.toColor),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonText,
          ),
        ),
      ],
    );
  }
}
