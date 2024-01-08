import 'package:dartz/dartz.dart';
import 'package:quotes/core/error/failures.dart';
import 'package:quotes/features/random_quote/domain/entites/quote.dart';

abstract class QuoteRepo {
  Future<Either<Failure, Qoute>> getRandomQuote();
}
