import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makemelaugh/features/joke/domain/usecases/get_random_joke.dart';
import 'package:makemelaugh/features/joke/presentation/bloc/joke_event.dart';
import 'package:makemelaugh/features/joke/presentation/bloc/joke_state.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  final GetRandomJokeUseCase getRandomJoke;
  JokeState get initialState => Empty();

  JokeBloc({
    required this.getRandomJoke,
  }) : super(Empty()) {
    on<GetRandomJoke>((event, emit) async {
      emit(Loading());
      final response = await getRandomJoke(NoParams());
      response!.fold((failure) {
        emit(Error(message: _mapFailureToMessage(failure)));
      }, (joke) {
        emit(Loaded(joke: joke));
      });
    });
  }
}

String _mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return 'Please check your internet connection';
    default:
      return 'Unexpected error';
  }
}
