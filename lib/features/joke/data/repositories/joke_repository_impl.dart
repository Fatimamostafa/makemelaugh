import 'package:dartz/dartz.dart';
import 'package:makemelaugh/core/error/exception.dart';
import 'package:makemelaugh/core/network/network_info.dart';
import 'package:makemelaugh/features/joke/data/models/joke.dart';

import '../../../../core/error/failure.dart';
import '../../domain/repositories/joke_repository.dart';
import '../datasources/joke_remote_datasource.dart';

class JokeRepositoryImpl implements JokeRepository {
  final JokeRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  JokeRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, JokeModel>> getRandomJoke() async {
    if (await networkInfo.isConnected == true) {
      try {
        final result = await remoteDataSource.getRandomJoke();
        return Right(result);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
