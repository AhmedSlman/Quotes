import 'dart:convert';

import 'package:quotes/core/api/end_point.dart';
import 'package:quotes/core/error/exceptions.dart';
import 'package:quotes/core/utils/app_strings.dart';

import '../models/qoute_model.dart';
import 'package:http/http.dart' as http;

abstract class RandomQouteRemoteDatasource {
  Future<QuoteModel> getRandomQoute();
}

class RandomQouteRemoteDataSourceImple implements RandomQouteRemoteDatasource {
  http.Client client;
  RandomQouteRemoteDataSourceImple({required this.client});

  @override
  Future<QuoteModel> getRandomQoute() async {
    final randomQouteUri = Uri.parse(EndPoints.randomQuote);
    final response = await client.get(randomQouteUri,
        headers: {AppStrings.contentType: AppStrings.applicationJson});
    if (response.statusCode == 200) {
      return QuoteModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw ServerException();
    }
  }
}
