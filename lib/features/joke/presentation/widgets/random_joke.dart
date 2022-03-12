import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makemelaugh/features/joke/domain/entities/joke.dart';
import 'package:makemelaugh/features/joke/presentation/bloc/joke_bloc.dart';
import 'package:makemelaugh/features/joke/presentation/bloc/joke_event.dart';

class RandomJoke extends StatefulWidget {
  final JokeEntity joke;

  const RandomJoke({Key? key, required this.joke}) : super(key: key);

  @override
  State<RandomJoke> createState() => _RandomJokeState();
}

class _RandomJokeState extends State<RandomJoke> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: _showAnswer,
            child: Text(
              widget.joke.setup,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Visibility(
            visible: isTapped,
            child: Text(
              "- " + widget.joke.punchline,
              style: const TextStyle(fontSize: 20, color: Colors.blueGrey),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }

  void _showAnswer() {
    setState(() {
      isTapped = true;
    });
    Future.delayed(const Duration(seconds: 3)).then((value) {
      if (mounted) {
        context.read<JokeBloc>().add(GetRandomJoke());
      }
    });
  }
}
