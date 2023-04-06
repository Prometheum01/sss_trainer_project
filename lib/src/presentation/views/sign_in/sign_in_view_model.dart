import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_in/sign_in_view.dart';
import 'package:sss_trainer_project/src/utils/exceptions/auth_exceptions.dart';

import '../../../data/data_sources/remote/auth_service.dart';
import '../../../utils/constants/navigator_routers.dart';

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
  final String orText = 'Or Sign In With';
  final String doNotHaveAnAccountText = 'Don\'t have an account?';

  late final TextEditingController emailController, passwordController;
  late final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  Future<void> signIn() async {
    //This function is called when the user clicks on the "Sign In" button and call the signIn function from the Firebase Service

    if (validateFields) {
      //Call the signIn function from the Firebase Service

      try {
        await AuthService.firebase().signInWithEmailAndPassword(
          emailController.text.trim(),
          passwordController.text.trim(),
        );

        final user = AuthService.firebase().currentUser;

        if (user != null) {
          // ignore: use_build_context_synchronously
          Navigator.of(context)
              .pushReplacementNamed(NavigatorRoutes.home.route);
        } else {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('An error occurred')),
          );
        }
      } on UserNotFoundAuthException {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User not found')),
        );
      } on WrongPasswordAuthException {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Wrong password')),
        );
      } on GenericAuthException {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('An error occurred')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('An error occurred')),
        );
      }
    }
  }

  bool get validateFields => formKey.currentState?.validate() ?? false;

  void loginWithGoogle() {
    //This function is called when the user clicks on the "Google" button and call the loginWithGoogle function from the Firebase Service
  }

  void loginWithFacebook() {
    //This function is called when the user clicks on the "Facebook" button and call the loginWithFacebook function from the Firebase Service
  }

  void forgotPassword() {
    //This function is called when the user clicks on the "Forgot Password?" button
  }

  void goToSignUpView() {
    //This function is called when the user clicks on the "Sign Up" button and navigate to the SignUpView
    Navigator.of(context).pushReplacementNamed(NavigatorRoutes.signUp.route);
  }
}
