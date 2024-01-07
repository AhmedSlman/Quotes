import 'package:flutter/material.dart';
import 'package:quotes/core/utils/app_strings.dart';

import '../widgets/body_contant.dart';

class QuoteView extends StatelessWidget {
  const QuoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.appName),
      ),
      body: const BodyContant(),
    );
  }
}
