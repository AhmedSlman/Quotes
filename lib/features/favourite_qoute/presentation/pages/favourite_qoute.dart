import 'package:flutter/material.dart';

class FavouriteQoiteView extends StatelessWidget {
  const FavouriteQoiteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Favourite Qoute',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
