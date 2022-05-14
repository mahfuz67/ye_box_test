import 'package:flutter/material.dart';

import '../../presentation/pages/home.dart';
import '../../presentation/pages/splash.dart';
import '../commons/constants/routes.dart';

class RouterC {
  RouterC._();

  static generate(settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (ctx) => const Splash(), settings: settings);
      case Routes.home:
        return MaterialPageRoute(builder: (ctx) => const Home(), settings: settings);
    }
  }
}
