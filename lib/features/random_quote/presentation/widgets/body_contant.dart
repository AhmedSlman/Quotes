import 'package:flutter/material.dart';
import 'qoute_contant.dart';
import 'refresh_button.dart';

class BodyContant extends StatelessWidget {
  const BodyContant({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 20,
        ),
        QuoteContent(),
        RefreshButton(),
      ],
    );
  }
}
