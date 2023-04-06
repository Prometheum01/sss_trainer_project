import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/data/data_sources/remote/auth_service.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_up/sign_up_view.dart';

import '../../../utils/constants/navigator_routers.dart';
import '../../../utils/exceptions/auth_exceptions.dart';

abstract class SignUpViewModel extends State<SignUpView> {
  final String titleText = 'Create an account';
  final String subtitleText =
      'Let’s help you set up your account,\nit won’t take long.';
  final String nameText = 'Name';
  final String nameHintText = 'Enter Name';
  final String emailText = 'Email';
  final String emailHintText = 'Enter Email';
  final String passwordText = 'Password';
  final String passwordHintText = 'Enter Password';
  final String confirmPasswordText = 'Confirm Password';
  final String confirmPasswordHintText = 'Enter Password';
  final String signUpButtonText = 'Sign Up';
  final String alreadyHaveAnAccountText = 'Already have an account?';
  final String signInButtonText = 'Sign In';
  final String orText = 'Or Sign In With';
  final String acceptTermsAndConditionsText = 'Accept terms & Condition';

  bool acceptTermsAndConditionsValue = false;

  late final formKey = GlobalKey<FormState>();

  late final TextEditingController nameController,
      emailController,
      passwordController,
      confirmPasswordController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  Future<void> signUp() async {
    //This function is called when the user clicks on the "Sign Up" button and call the signUp function from the Firebase Service
    if (validateFields) {
      //Call the signUp function from the Firebase Service
      try {
        await AuthService.firebase().createUserWithEmailAndPassword(
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
      } on WeakPasswordAuthException {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Weak password')),
        );
      } on EmailAlreadyInUseAuthException {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Email already in use')),
        );
      } on InvalidEmailAuthException {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid email')),
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

  bool get validateFields {
    if (acceptTermsAndConditionsValue == false) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please accept terms & conditions')),
      );
      return false;
    } else {
      if (passwordController.text.trim() !=
          confirmPasswordController.text.trim()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Passwords do not match')),
        );
        return false;
      }
      return formKey.currentState?.validate() ?? false;
    }
  }

  void loginWithGoogle() {
    //This function is called when the user clicks on the "Google" button and call the loginWithGoogle function from the Firebase Service
  }

  void loginWithFacebook() {
    //This function is called when the user clicks on the "Facebook" button and call the loginWithFacebook function from the Firebase Service
  }

  void goToSignInView() {
    //This function is called when the user clicks on the "Sign In" button and navigate to the SignInView
    Navigator.of(context).pushReplacementNamed(NavigatorRoutes.signIn.route);
  }

  void acceptTermsAndConditions(bool? value) {
    //This function is called when the user clicks on the "Accept terms & Condition" button

    setState(() {
      acceptTermsAndConditionsValue = value ?? false;
    });
  }
}
