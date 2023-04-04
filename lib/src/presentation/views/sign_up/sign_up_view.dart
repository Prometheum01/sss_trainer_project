import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_up/sign_up_view_model.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';
import 'package:sss_trainer_project/src/utils/constants/images.dart';
import 'package:sss_trainer_project/src/utils/extensions/validator.dart';

import '../../../utils/constants/paddings.dart';
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

class _SignUpViewState extends SignUpViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const PaddingConstants.bigHorizontal(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoubleTitle(
                title: titleText,
                subtitle: subtitleText,
                lightTitle: true,
              ),
              const Spacer(flex: 4),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    CustomAuthField(
                      hint: nameHintText,
                      label: nameText,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      controller: nameController,
                      validator: (p0) => p0?.validateName(),
                    ),
                    CustomAuthField(
                      hint: emailHintText,
                      label: emailText,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      controller: emailController,
                      validator: (p0) => p0?.validateEmail(),
                    ),
                    CustomAuthField(
                      hint: passwordHintText,
                      label: passwordText,
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      controller: passwordController,
                      validator: (p0) => p0?.validatePassword(),
                    ),
                    CustomAuthField(
                      hint: confirmPasswordHintText,
                      label: confirmPasswordText,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      controller: confirmPasswordController,
                      validator: (p0) => p0?.validatePassword(),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: acceptTermsAndConditionsValue,
                    onChanged: (value) {
                      acceptTermsAndConditions(value);
                    },
                    visualDensity: VisualDensity.compact,
                  ),
                  Text(
                    acceptTermsAndConditionsText,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.orangePeel.toColor,
                        ),
                  ),
                ],
              ),
              const Spacer(flex: 1),
              MainElevatedButton(
                text: signUpButtonText,
                onPressed: signUp,
                icon: Icons.arrow_forward_rounded,
              ),
              const Spacer(flex: 1),
              TextWithDivider(text: orText),
              const Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButton(
                    imagePath: ImageConstants.ic_google.toPath,
                    onTap: loginWithGoogle,
                  ),
                  const SizedBox(width: 24),
                  SocialMediaButton(
                    imagePath: ImageConstants.ic_facebook.toPath,
                    onTap: loginWithFacebook,
                  ),
                ],
              ),
              const Spacer(flex: 1),
              DoubleTextWithButton(
                text: alreadyHaveAnAccountText,
                buttonText: signInButtonText,
                onPressed: goToSignInView,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
