import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:makemelaugh/features/joke/domain/entities/joke.dart';

part 'joke.freezed.dart';

part 'joke.g.dart';

@freezed
class JokeModel with _$JokeModel implements JokeEntity {
  const factory JokeModel({
    required int id,
    required String type,
    required String setup,
    required String punchline,
  }) = _JokeModel;

  factory JokeModel.fromJson(Map<String, dynamic> json) =>
      _$JokeModelFromJson(json);
}