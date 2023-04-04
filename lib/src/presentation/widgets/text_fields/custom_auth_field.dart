import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

class CustomAuthField extends StatelessWidget {
  const CustomAuthField({
    super.key,
    this.validator,
    this.controller,
    required this.hint,
    required this.label,
    this.keyboardType,
    this.obscureText,
    this.textInputAction,
  });

  final String hint, label;

  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: ColorConstants.onyx.toColor),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: hint,
          ),
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: ColorConstants.onyx.toColor),
          textInputAction: textInputAction,
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          controller: controller,
          validator: validator,
        ),
      ],
    );
  }
}
