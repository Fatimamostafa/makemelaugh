import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:makemelaugh/features/joke/presentation/bloc/joke_event.dart';
import 'package:makemelaugh/features/joke/presentation/bloc/joke_state.dart';

import '../../../../injection_container.dart';
import '../bloc/joke_bloc.dart';
import '../widgets/loading_widget.dart';
import '../widgets/message_display.dart';
import '../widgets/random_joke.dart';

class JokePage extends StatelessWidget {
  const JokePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Make Me Laugh'),
        ),
        body: buildBody(context));
  }

  BlocProvider<JokeBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<JokeBloc>()..add(GetRandomJoke()),
      child: BlocBuilder<JokeBloc, JokeState>(
        builder: (context, state) {
          if (state is Empty) {
            return const MessageDisplay(message: 'Start searching...');
          } else if (state is Loading) {
            return const LoadingWidget();
          } else if (state is Loaded) {
            return RandomJoke(
              joke: state.joke,
            );
          } else if (state is Error) {
            return MessageDisplay(message: state.message);
          }
          return SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: const Placeholder(),
          );
        },
      ),
    );
  }
}
