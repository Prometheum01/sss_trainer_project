import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_in/sign_in_view.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';
import 'package:sss_trainer_project/src/utils/constants/images.dart';

import '../../widgets/buttons/double_text_w_button.dart';
import '../../widgets/buttons/main_elevated_button.dart';
import '../../widgets/buttons/social_media_button.dart';
import '../../widgets/text_fields/custom_auth_field.dart';
import '../../widgets/texts/double_title.dart';
import '../../widgets/texts/text_w_dividers.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DoubleTitle(
                title: "Create an account",
                subtitle:
                    "Let’s help you set up your account,\nit won’t take long.",
                lightTitle: true,
              ),
              const Spacer(flex: 4),
              const CustomAuthField(
                hint: "Enter Name",
                label: "Name",
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
              ),
              const Spacer(flex: 1),
              const CustomAuthField(
                hint: "Enter Email",
                label: "Email",
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const Spacer(flex: 1),
              const CustomAuthField(
                hint: "Enter Password",
                label: "Password",
                obscureText: true,
                textInputAction: TextInputAction.next,
              ),
              const Spacer(flex: 1),
              const CustomAuthField(
                hint: "Retype Password",
                label: "Confirm Password",
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
              const Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    visualDensity: VisualDensity.compact,
                  ),
                  Text(
                    "Accept terms & Condition",
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.orangePeel.toColor,
                        ),
                  ),
                ],
              ),
              const Spacer(flex: 1),
              MainElevatedButton(
                text: "Sign Up",
                onPressed: () {},
                icon: Icons.arrow_forward_rounded,
              ),
              const Spacer(flex: 1),
              const TextWithDivider(text: "Or Sign In With"),
              const Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButton(imagePath: ImageConstants.ic_google.toPath),
                  const SizedBox(
                    width: 24,
                  ),
                  SocialMediaButton(
                      imagePath: ImageConstants.ic_facebook.toPath),
                ],
              ),
              const Spacer(flex: 1),
              DoubleTextWithButton(
                text: "Already a remember?",
                buttonText: "Sign In",
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SignInView(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
