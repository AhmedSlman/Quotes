import 'package:flutter/material.dart';
import 'package:quotes/config/themes/app_theme.dart';

import 'config/s/app_routes.dart';
import 'features/random_quote/presentation/views/home_view.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quotes App',
      theme: appThemes(),
      home: const QuoteView(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
