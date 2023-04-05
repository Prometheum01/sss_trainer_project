import 'package:flutter/material.dart';

import '../../../utils/constants/navigator_routers.dart';
import 'onboard_view.dart';

abstract class OnboardViewModel extends State<OnboardView> {
  final String recipes = '100K+ Premium Recipes';
  final String title = 'Get\nCooking';
  final String description = 'Simple way to find Tasty Recipe';
  final String startCooking = 'Start Cooking';

  void goToSignInView() {
    //This function is called when the user clicks on the "Start Cooking" button
    Navigator.of(context).pushReplacementNamed(NavigatorRoutes.signIn.route);
  }
}
