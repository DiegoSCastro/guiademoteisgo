import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:mocktail/mocktail.dart';

class MockFetchMotelsUsecase extends Mock implements FetchMotelsUsecase {}

void main() {
  final dummyMotelData = MotelData(
    page: 1,
    itemsPerPage: 10,
    totalSuites: 5,
    totalMotels: 3,
    radius: 10.5,
    maxPages: 1,
    motels: [],
  );

  group('GoNowCubit without bloc_test', () {
    test(
        'emite [GoNowLoading, GoNowLoaded] quando fetchHomeMotels retorna sucesso',
        () async {
      final mockFetch = MockFetchMotelsUsecase();
      when(mockFetch.call).thenAnswer((_) async => Right(dummyMotelData));

      final cubit = GoNowCubit(fetchMotelsUsecase: mockFetch);
      final emittedStates = <GoNowState>[];

      final subscription = cubit.stream.listen(emittedStates.add);

      await cubit.fetchHomeMotels();
      await Future.delayed(const Duration(milliseconds: 10));

      expect(
        emittedStates,
        equals([
          const GoNowLoading(),
          GoNowLoaded(motelData: dummyMotelData),
        ]),
      );

      await subscription.cancel();
      await cubit.close();
    });

    test(
        'emite [GoNowLoading, GoNowError] quando fetchHomeMotels retorna falha',
        () async {
      final mockFetch = MockFetchMotelsUsecase();
      when(mockFetch.call).thenAnswer((_) async => Left(Exception('error')));

      final cubit = GoNowCubit(fetchMotelsUsecase: mockFetch);
      final emittedStates = <GoNowState>[];

      final subscription = cubit.stream.listen(emittedStates.add);

      await cubit.fetchHomeMotels();
      await Future.delayed(const Duration(milliseconds: 10));

      expect(
        emittedStates,
        equals([
          const GoNowLoading(),
          const GoNowError(
            message:
                'Infelizmente nao encontramos nenhum motel com reservas na sua região.',
          ),
        ]),
      );

      await subscription.cancel();
      await cubit.close();
    });
  });
}
