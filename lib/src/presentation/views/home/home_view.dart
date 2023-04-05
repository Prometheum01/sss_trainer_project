import 'package:flutter/material.dart';
import 'package:sss_trainer_project/src/data/data_sources/remote/auth_service.dart';
import 'package:sss_trainer_project/src/utils/constants/navigator_routers.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () async {
              await AuthService.firebase().signOut();
              Navigator.of(context)
                  .pushReplacementNamed(NavigatorRoutes.onboard.route);
            },
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: Text(AuthService.firebase().currentUser.toString()),
    );
  }
}
