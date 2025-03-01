import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: NamedRoutes.initial.route,
      routes: AppRoutes.routes,
    );
  }
}
