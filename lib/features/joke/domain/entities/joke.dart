class JokeEntity {
  final int id;
  final String setup;
  final String type;
  final String punchline;

  const JokeEntity({
    required this.setup,
    required this.punchline,
    required this.id,
    required this.type,
  });
}
