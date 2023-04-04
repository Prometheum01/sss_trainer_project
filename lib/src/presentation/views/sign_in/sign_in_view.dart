import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';

import '../../../utils/constants/images.dart';
import '../../widgets/buttons/double_text_w_button.dart';
import '../../widgets/buttons/main_elevated_button.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
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
            const MainElevatedButton(
              text: "Sign In",
              icon: Icons.arrow_forward_rounded,
            ),
            const Spacer(flex: 1),
            const TextWithDivider(text: "Or Sign In With"),
            const Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: ColorConstants.white.toColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      ImageConstants.ic_google.toPath,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: ColorConstants.white.toColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      ImageConstants.ic_facebook.toPath,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(flex: 2),
            DoubleTextWithButton(
              text: "Don't have an account? ",
              buttonText: "Sign Up",
              onPressed: () {},
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
