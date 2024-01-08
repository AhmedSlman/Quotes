import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static void showErrorDialog(
      {required BuildContext context, required String message}) {
    showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
