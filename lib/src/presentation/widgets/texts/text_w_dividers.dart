import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

class TextWithDivider extends StatelessWidget {
  const TextWithDivider({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: ColorConstants.lightGrey.toColor,
                ),
          ),
        ),
        const Expanded(
          child: Divider(),
        ),
      ],
    );
  }
}
