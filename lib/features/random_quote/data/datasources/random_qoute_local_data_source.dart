import 'dart:convert';

import 'package:quotes/core/error/exceptions.dart';
import 'package:quotes/core/utils/app_strings.dart';
import 'package:quotes/features/random_quote/data/models/qoute_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class RandomQouteLocalDataSource {
  Future<QuoteModel> getLastRandomQoute();
  Future<void> cachQoute(QuoteModel qoute);
}

class RandomQoutrLocalDataSource implements RandomQouteLocalDataSource {
  final SharedPreferences sharedPreferences;

  RandomQoutrLocalDataSource({required this.sharedPreferences});
  @override
  Future<QuoteModel> getLastRandomQoute() {
    final jsonString =
        sharedPreferences.getString(AppStrings.cachedRandomQoute);
    if (jsonString != null) {
      final cachedRandomQoute = Future.value(QuoteModel.fromJson(
        json.decode(jsonString),
      ));
      return cachedRandomQoute;
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cachQoute(QuoteModel quote) {
    return sharedPreferences.setString(
      AppStrings.cachedRandomQoute,
      json.encode(quote),
    );
  }
}
