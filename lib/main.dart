import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/presentation/views/onboard/onboard_view.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SSS Trainer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dividerTheme: DividerThemeData(
          thickness: 1,
          color: ColorConstants.lightGrey.toColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.orangePeel.toColor,
                ),
            padding: const EdgeInsets.all(0),
            foregroundColor: ColorConstants.orangePeel.toColor.withOpacity(0.5),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: ColorConstants.white.toColor),
            backgroundColor: ColorConstants.teal.toColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 15,
            ),
          ),
        ),
      ),
      home: const OnboardView(),
    );
  }
}
