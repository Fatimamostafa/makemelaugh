import 'package:dartz/dartz.dart';
import 'package:makemelaugh/core/error/failure.dart';
import 'package:makemelaugh/features/joke/domain/entities/joke.dart';

import '../../../../core/usecase/usecase.dart';
import '../repositories/joke_repository.dart';

class GetRandomJokeUseCase implements UseCase<JokeEntity, NoParams> {
  final JokeRepository repository;

  GetRandomJokeUseCase(this.repository);

  @override
  Future<Either<Failure, JokeEntity>?> call(NoParams params) async {
    return await repository.getRandomJoke();
  }
}
