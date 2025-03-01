import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_routes.dart';
import 'package:social_app/app/core/utils/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: NamedRoutes.home.route,
      routes: AppRoutes.routes,
    );
  }
}
