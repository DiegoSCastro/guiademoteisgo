import 'package:get_it/get_it.dart';
import 'package:guiademoteisgo/app/app.dart';

final injection = GetIt.instance;

void initInjection() {
  injection
    ..registerLazySingleton<RestClient>(HttpRestClient.new)
    ..registerLazySingleton<HomeRemoteDatasource>(
      () => HomeRemoteDatasourceImpl(
        restClient: injection<RestClient>(),
      ),
    )
    ..registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(
        remoteDatasource: injection<HomeRemoteDatasource>(),
      ),
    )
    ..registerLazySingleton<FetchMotelsUsecase>(
      () => FetchMotelsUsecaseImpl(
        repository: injection<HomeRepository>(),
      ),
    )
    ..registerFactory<GoNowCubit>(
      () => GoNowCubit(
        fetchMotelsUsecase: injection<FetchMotelsUsecase>(),
      ),
    );
}
