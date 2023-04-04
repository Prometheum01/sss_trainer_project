import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_in/sign_in_view.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

import '../../../utils/constants/images.dart';
import '../../widgets/buttons/main_elevated_button.dart';
import 'onboard_view_model.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends OnboardViewModel {
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
                    ColorConstants.black.toColor,
                    ColorConstants.black.toColor.withOpacity(0.4),
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
                recipes,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ColorConstants.white.toColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Spacer(
                flex: 9,
              ),
              Text(
                title,
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
                description,
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
                  text: startCooking,
                  icon: Icons.arrow_forward_rounded,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SignInView(),
                      ),
                    );
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
