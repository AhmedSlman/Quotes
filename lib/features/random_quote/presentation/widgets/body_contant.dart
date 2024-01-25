import 'package:flutter/material.dart';
import 'qoute_contant.dart';
import 'refresh_button.dart';

class BodyContant extends StatelessWidget {
  const BodyContant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        QuoteContent(),
        const RefreshButton(),
      ],
    );
  }
}
