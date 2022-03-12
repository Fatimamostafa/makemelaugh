import 'package:dartz/dartz.dart';
import 'package:makemelaugh/core/error/failure.dart';
import 'package:makemelaugh/features/joke/domain/entities/joke.dart';

abstract class JokeRepository {
  Future<Either<Failure, JokeEntity>>? getRandomJoke();
}
