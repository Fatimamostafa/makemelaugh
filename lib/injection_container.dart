import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'core/network/network_info.dart';
import 'features/joke/data/datasources/joke_remote_datasource.dart';
import 'features/joke/data/repositories/joke_repository_impl.dart';
import 'features/joke/domain/repositories/joke_repository.dart';
import 'features/joke/domain/usecases/get_random_joke.dart';
import 'features/joke/presentation/bloc/joke_bloc.dart';

// service locator
final sl = GetIt.instance;

Future<void> init() async {
  // Bloc
  sl.registerFactory(
        () => JokeBloc(
      getRandomJoke: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => GetRandomJokeUseCase(sl()));

  // Repository
  sl.registerLazySingleton<JokeRepository>(() => JokeRepositoryImpl(
    remoteDataSource: sl(),
    networkInfo: sl(),
  ));

  // Data sources
  sl.registerLazySingleton<JokeRemoteDataSource>(
          () => JokeRemoteDataSourceImpl(sl()));

  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  // External
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
