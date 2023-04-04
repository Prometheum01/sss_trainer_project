import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

import '../../../utils/constants/images.dart';
import '../../widgets/buttons/main_elevated_button.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageConstants.ic_onboard.toPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.4),
                  ],
                ),
              ),
            ),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 4,
              ),
              Image.asset(
                ImageConstants.ic_logo.toPath,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                '100K+ Premium Recipes',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ColorConstants.white.toColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Spacer(
                flex: 9,
              ),
              Text(
                'Get\nCooking',
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: ColorConstants.white.toColor,
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                'Simple way to find Tasty Recipe',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ColorConstants.white.toColor,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              const Spacer(
                flex: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64),
                child: MainElevatedButton(
                  text: "Start Cooking",
                  icon: Icons.arrow_forward_rounded,
                  onPressed: () {
                    //navigateToSignIn();
                  },
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
