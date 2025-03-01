import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';
import 'package:social_app/app/presentation/pages/home/controller/home_controller.dart';
import 'package:social_app/app/presentation/pages/home/widgets/bottom_home_widget.dart';
import 'package:social_app/app/presentation/pages/home/widgets/home_widget.dart';
import 'package:social_app/app/presentation/pages/search/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, child) => Scaffold(
        bottomNavigationBar: BottomHomeWidget(
          onChangePage: controller.onChangePage,
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppSize.padding),
          child: PageView(
            controller: controller.pageController,
            children: [
              HomeWidget(),
              SearchPage(),
              Placeholder(),
              Placeholder(),
            ],
          ),
        ),
      ),
    );
  }
}
