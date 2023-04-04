import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_in/sign_in_view_model.dart';
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

class _SignInViewState extends SignInViewModel {
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
              DoubleTitle(
                title: titleText,
                subtitle: subtitleText,
              ),
              const Spacer(flex: 6),
              CustomAuthField(
                hint: emailHintText,
                label: emailText,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const Spacer(flex: 2),
              CustomAuthField(
                hint: passwordHintText,
                label: passwordText,
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
              const Spacer(flex: 1),
              TextButton(
                onPressed: forgotPassword,
                child: Text(
                  forgotPasswordText,
                ),
              ),
              const Spacer(flex: 1),
              MainElevatedButton(
                text: signInText,
                onPressed: () {},
                icon: Icons.arrow_forward_rounded,
              ),
              const Spacer(flex: 1),
              TextWithDivider(text: orSignInText),
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
                text: doNotHaveAnAccountText,
                buttonText: signUpText,
                onPressed: goToSignUpView,
              ),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
