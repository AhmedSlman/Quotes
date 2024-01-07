import 'package:flutter/material.dart';
import 'package:quotes/core/utils/app_strings.dart';
import 'package:quotes/features/random_quote/presentation/views/home_view.dart';

import '../../features/favourite_qoute/presentation/pages/favourite_qoute.dart';

class Routes {
  static const String initialRoute = '/';
  static const String favouriteQoiteRoute = 'favouriteQuote';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: ((context) => const QuoteView()),
        );
      case Routes.favouriteQoiteRoute:
        return MaterialPageRoute(
          builder: ((context) => const FavouriteQoiteView()),
        );
    }
    return undefindRoute();
  }

  static Route<dynamic> undefindRoute() {
    return MaterialPageRoute(
      builder: ((context) => const Scaffold(
            body: Center(
              child: Text(AppStrings.noRouteFound),
            ),
          )),
    );
  }
}
