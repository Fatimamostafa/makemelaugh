import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:makemelaugh/features/joke/data/models/joke.dart';

import '../../../../core/error/exception.dart';

abstract class JokeRemoteDataSource {
  Future<JokeModel> getRandomJoke();
}

const _kUrl = 'https://joke.api.gkamelo.xyz/random';
const _kApiKey = 'QUtFhHPnlQ5f13LDVpQL3a54XgQzTlCJa1PMSB3o';

class JokeRemoteDataSourceImpl implements JokeRemoteDataSource {
  final http.Client client;

  JokeRemoteDataSourceImpl(this.client);

  @override
  Future<JokeModel> getRandomJoke() async {
    final response = await client.get(Uri.parse(_kUrl),
        headers: {'Content-Type': 'application/json', 'x-api-key': _kApiKey});
    if (response.statusCode == 200) {
      return JokeModel.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException();
    }
  }
}
