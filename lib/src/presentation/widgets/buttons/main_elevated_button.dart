import 'package:flutter/material.dart';

class MainElevatedButton extends StatelessWidget {
  const MainElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.icon,
  });

  final void Function()? onPressed;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
          ),
          const SizedBox(
            width: 4,
          ),
          Icon(icon)
        ],
      ),
    );
  }
}
