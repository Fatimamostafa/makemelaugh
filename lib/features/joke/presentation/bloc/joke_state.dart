import 'package:equatable/equatable.dart';
import 'package:makemelaugh/features/joke/domain/entities/joke.dart';

abstract class JokeState extends Equatable {
  const JokeState();

  @override
  List<Object> get props => [];
}

class Empty extends JokeState {}

class Loading extends JokeState {}

class Loaded extends JokeState {
  final JokeEntity joke;

  const Loaded({required this.joke});
}

class Error extends JokeState {
  final String message;

  const Error({required this.message});
}

