import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

import 'package:guiademoteisgo/app/app.dart';

void main() {
  final getIt = GetIt.instance;

  group('Testes de Injeção de Dependências', () {
    setUp(() {
      getIt.reset();
      initInjection();
    });

    test('RestClient está registrado como HttpRestClient', () {
      final restClient = getIt<RestClient>();
      expect(restClient, isNotNull);
      expect(restClient, isA<HttpRestClient>());
    });

    test('HomeRemoteDatasource está registrado como HomeRemoteDatasourceImpl',
        () {
      final datasource = getIt<HomeRemoteDatasource>();
      expect(datasource, isNotNull);
      expect(datasource, isA<HomeRemoteDatasourceImpl>());
    });

    test('HomeRepository está registrado como HomeRepositoryImpl', () {
      final repository = getIt<HomeRepository>();
      expect(repository, isNotNull);
      expect(repository, isA<HomeRepositoryImpl>());
    });

    test('FetchMotelsUsecase está registrado como FetchMotelsUsecaseImpl', () {
      final usecase = getIt<FetchMotelsUsecase>();
      expect(usecase, isNotNull);
      expect(usecase, isA<FetchMotelsUsecaseImpl>());
    });

    test(
        'GoNowCubit está registrado e possui dependência de FetchMotelsUsecase',
        () {
      final cubit = getIt<GoNowCubit>();
      expect(cubit, isNotNull);
      expect(cubit, isA<GoNowCubit>());
    });
  });
}
