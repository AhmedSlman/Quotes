import 'package:flutter/material.dart';
import 'package:quotes/features/random_quote/data/models/qoute_model.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_style.dart';

class QuoteContent extends StatelessWidget {
  QuoteContent({
    super.key,
  });
  QuoteModel? quote;

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
          Text(
            quote?.content ?? '',
            textAlign: TextAlign.center,
            style: AppStyle.s22,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              quote?.author ?? '',
              style: AppStyle.s22,
            ),
          ),
        ],
      ),
    );
  }
}
