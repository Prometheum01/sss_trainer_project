import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/presentation/views/onboard/onboard_view.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';
import 'package:sss_trainer_project/src/utils/constants/decoration.dart';

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
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorConstants.orangePeel.toColor.withOpacity(.32);
            }
            return ColorConstants.orangePeel.toColor;
          }),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: ColorConstants.orangePeel.toColor,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: CustomOutlineInputBorders.textFieldBorder(),
          focusedBorder: CustomOutlineInputBorders.textFieldBorder(),
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: ColorConstants.lightGrey.toColor,
              ),
        ),
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
