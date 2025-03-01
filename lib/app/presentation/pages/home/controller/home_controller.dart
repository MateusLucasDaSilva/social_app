import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  PageController pageController = PageController();
  HomeEnumType currentHomeEnumType = HomeEnumType.home;

  void _changeCurrentHomeEnumType(HomeEnumType type) {
    currentHomeEnumType = type;
    notifyListeners();
  }

  void onChangePage(HomeEnumType type) {
    pageController.jumpToPage(type.index);
    _changeCurrentHomeEnumType(type);
  }
}

enum HomeEnumType {
  home,
  search,
  chat,
  profile,
}
