import 'package:flutter/material.dart';

import 'package:project/presentation/screen/error_page.dart';
import 'package:project/presentation/screen/first_screen.dart';
import 'package:project/presentation/screen/home_page.dart';
import 'package:project/presentation/screen/second_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    final Object? key = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => MyHomePage(
            title: "Home Screen",
          ),
        );
      case '/demo':
        return MaterialPageRoute(
          builder: (_) => DemoScreen(
            title: 'Demo',
          ),
        );
      case '/random':
        return MaterialPageRoute(
          builder: (_) => SomeRandomPage(
            title: 'Random',
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Errorpage(),
        );
    }
  }
}
