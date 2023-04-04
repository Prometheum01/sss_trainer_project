import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_up/sign_up_view.dart';
import 'package:sss_trainer_project/src/utils/constants/paddings.dart';

import '../../../utils/constants/images.dart';
import '../../widgets/buttons/double_text_w_button.dart';
import '../../widgets/buttons/main_elevated_button.dart';
import '../../widgets/buttons/social_media_button.dart';
import '../../widgets/text_fields/custom_auth_field.dart';
import '../../widgets/texts/double_title.dart';
import '../../widgets/texts/text_w_dividers.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const PaddingConstants.bigHorizontal(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(flex: 6),
              const DoubleTitle(
                title: "Hello,",
                subtitle: "Welcome Back!",
              ),
              const Spacer(flex: 6),
              const CustomAuthField(
                hint: "Enter Email",
                label: "Email",
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const Spacer(flex: 2),
              const CustomAuthField(
                hint: "Enter Password",
                label: "Password",
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
              const Spacer(flex: 1),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                ),
              ),
              const Spacer(flex: 1),
              MainElevatedButton(
                text: "Sign In",
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
              const Spacer(flex: 2),
              DoubleTextWithButton(
                text: "Don't have an account? ",
                buttonText: "Sign Up",
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const SignUpView(),
                  ));
                },
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
