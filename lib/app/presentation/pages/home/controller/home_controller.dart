import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  PageController pageController = PageController();

  void onChangePage(HomeEnumType type) {
    pageController.animateToPage(
      type.index,
      duration: Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }
}

enum HomeEnumType {
  home,
  search,
  chat,
  profile,
}
