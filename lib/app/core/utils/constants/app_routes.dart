import 'package:flutter/material.dart';
import 'package:social_app/app/domain/entities/chat_entity.dart';
import 'package:social_app/app/presentation/pages/chat/chat_page.dart';
import 'package:social_app/app/presentation/pages/home/home_page.dart';
import 'package:social_app/app/presentation/pages/login/login_page.dart';
import 'package:social_app/app/presentation/pages/sign_up/sign_up_page.dart';
import 'package:social_app/app/presentation/pages/splash/splash_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    NamedRoutes.initial.route: (_) => SplashPage(),
    NamedRoutes.login.route: (_) => LoginPage(),
    NamedRoutes.signUp.route: (_) => SignUpPage(),
    NamedRoutes.home.route: (_) => HomePage(),
    NamedRoutes.chat.route: (context) {
      final chat = ModalRoute.of(context)!.settings.arguments as ChatEntity;
      return ChatPage(
        chat: chat,
      );
    },
  };
}

enum NamedRoutes {
  initial('/'),
  login('/login'),
  signUp('/sign_up'),
  chat('/chat'),
  home('/home');

  const NamedRoutes(this.route);

  final String route;
}
