import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../screens/placeholder/coming_soon_screen.dart';
import '../../screens/services_screen.dart';
import 'app_routes.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return _page(const HomeScreen(), settings);
      case AppRoutes.services:
        return _page(const ServicesScreen(), settings);
      default:
        // Pages built by other teammates will replace this placeholder.
        return _page(
          ComingSoonScreen(title: AppRoutes.titleFor(settings.name)),
          settings,
        );
    }
  }

  static MaterialPageRoute<dynamic> _page(Widget child, RouteSettings s) {
    return MaterialPageRoute<dynamic>(builder: (_) => child, settings: s);
  }
}

/// One place for navigation so every button behaves the same way.
class AppNavigator {
  AppNavigator._();

  static void go(BuildContext context, String route, {String? current}) {
    final here = current ?? ModalRoute.of(context)?.settings.name;
    if (here == route) return; // already on this page
    if (route == AppRoutes.home) {
      Navigator.of(context).pushNamedAndRemoveUntil(route, (r) => false);
    } else {
      Navigator.of(context).pushNamed(route);
    }
  }
}
