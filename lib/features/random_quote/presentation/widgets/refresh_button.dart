import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';

class RefreshButton extends StatelessWidget {
  const RefreshButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
      ),
      child: const Icon(
        Icons.refresh,
        size: 22,
        color: Colors.white,
      ),
    );
  }
}
