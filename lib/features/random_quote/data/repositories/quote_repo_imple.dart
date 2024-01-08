import 'package:dartz/dartz.dart';
import 'package:quotes/core/error/exceptions.dart';
import 'package:quotes/core/error/failures.dart';
import 'package:quotes/core/network/network_info.dart';
import 'package:quotes/features/random_quote/data/datasources/random_qoute_local_data_source.dart';
import 'package:quotes/features/random_quote/data/datasources/random_qoute_remote_data_source.dart';
import 'package:quotes/features/random_quote/domain/entites/quote.dart';
import 'package:quotes/features/random_quote/domain/repositories/quote_repo.dart';

class QouteRepoImple implements QuoteRepo {
  final NetworkInfo networkInfo;
  final RandomQouteRemoteDatasource randomQouteRemoteDatasource;
  final RandomQouteLocalDataSource randomQouteLocalDataSource;

  QouteRepoImple({
    required this.networkInfo,
    required this.randomQouteRemoteDatasource,
    required this.randomQouteLocalDataSource,
  });
  @override
  Future<Either<Failure, Qoute>> getRandomQuote() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteRandomQoute =
            await randomQouteRemoteDatasource.getRandomQoute();
        randomQouteLocalDataSource.cachQoute(remoteRandomQoute);
        return Right(remoteRandomQoute as Qoute);
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      try {
        final cacheRandomQoute =
            await randomQouteLocalDataSource.getLastRandomQoute();
        return Right(cacheRandomQoute as Qoute);
      } on CacheException {
        return left(CacheFailure());
      }
    }
  }
}
