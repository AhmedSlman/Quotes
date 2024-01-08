import 'package:dartz/dartz.dart';
import 'package:quotes/core/error/failures.dart';
import 'package:quotes/core/usecases/usecase.dart';
import 'package:quotes/features/random_quote/domain/repositories/quote_repo.dart';

import '../entites/quote.dart';

class GetRandomQuote implements UseCase<Qoute, NoParams> {
  final QuoteRepo quoteRepo;

  GetRandomQuote({required this.quoteRepo});

  @override
  Future<Either<Failure, Qoute>> call(NoParams params) {
    return quoteRepo.getRandomQuote();
  }
}
