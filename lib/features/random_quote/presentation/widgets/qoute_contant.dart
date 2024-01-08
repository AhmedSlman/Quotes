import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';

class QuoteContent extends StatelessWidget {
  const QuoteContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const Text(
            'لو المصلحه هى اللى هتجمعنا ❌ يحرم عليا اجتمعنا❌🔞✋ ',
            textAlign: TextAlign.center,
            style: AppStyle.s22,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: const Text(
              'أبو ملك (الطير العاشق)',
              style: AppStyle.s22,
            ),
          ),
        ],
      ),
    );
  }
}
