import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_in/sign_in_view.dart';

import '../sign_up/sign_up_view.dart';

abstract class SignInViewModel extends State<SignInView> {
  final String titleText = 'Hello,';
  final String subtitleText = 'Welcome Back!';
  final String emailText = 'Email';
  final String emailHintText = 'Enter Email';
  final String passwordText = 'Password';
  final String passwordHintText = 'Enter Password';
  final String forgotPasswordText = 'Forgot Password?';
  final String signInText = 'Sign In';
  final String signUpText = 'Sign Up';
  final String orSignInText = 'Or Sign In With';
  final String doNotHaveAnAccountText = 'Don\'t have an account?';

  void signIn() {
    //This function is called when the user clicks on the "Sign In" button and call the signIn function from the Firebase Service
  }

  void forgotPassword() {
    //This function is called when the user clicks on the "Forgot Password?" button
  }

  void goToSignUpView() {
    //This function is called when the user clicks on the "Sign Up" button and navigate to the SignUpView
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const SignUpView(),
    ));
  }
}
