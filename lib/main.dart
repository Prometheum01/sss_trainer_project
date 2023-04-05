import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/data/data_sources/remote/auth_service.dart';
import 'package:sss_trainer_project/src/presentation/views/home/home_view.dart';
import 'package:sss_trainer_project/src/presentation/views/onboard/onboard_view.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_in/sign_in_view.dart';
import 'package:sss_trainer_project/src/presentation/views/sign_up/sign_up_view.dart';
import 'package:sss_trainer_project/src/utils/constants/colors.dart';
import 'package:sss_trainer_project/src/utils/constants/decorations.dart';
import 'package:sss_trainer_project/src/utils/constants/navigator_routers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SSS Trainer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return ColorConstants.orangePeel.toColor.withOpacity(.32);
            }
            return ColorConstants.orangePeel.toColor;
          }),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(
              color: ColorConstants.orangePeel.toColor,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: CustomOutlineInputBorders.textFieldBorder(),
          focusedBorder: CustomOutlineInputBorders.textFieldBorder(),
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: ColorConstants.lightGrey.toColor,
              ),
        ),
        dividerTheme: DividerThemeData(
          thickness: 1,
          color: ColorConstants.lightGrey.toColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.orangePeel.toColor,
                ),
            padding: const EdgeInsets.all(0),
            foregroundColor: ColorConstants.orangePeel.toColor.withOpacity(0.5),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: ColorConstants.white.toColor),
            backgroundColor: ColorConstants.teal.toColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 15,
            ),
          ),
        ),
      ),
      routes: {
        NavigatorRoutes.onboard.route: (context) => const OnboardView(),
        NavigatorRoutes.home.route: (context) => const HomeView(),
        NavigatorRoutes.signIn.route: (context) => const SignInView(),
        NavigatorRoutes.signUp.route: (context) => const SignUpView(),
      },
      home: FutureBuilder(
        future: AuthService.firebase().initialize(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              final user = AuthService.firebase().currentUser;
              if (user != null) {
                return const HomeView();
              } else {
                return const OnboardView();
              }
            default:
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
          }
        },
      ),
    );
  }
}
