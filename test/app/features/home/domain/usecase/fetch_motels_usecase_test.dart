import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:guiademoteisgo/app/app.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

void main() {
  late MockHomeRepository mockRepository;
  late FetchMotelsUsecase usecase;

  setUp(() {
    mockRepository = MockHomeRepository();
    usecase = FetchMotelsUsecaseImpl(repository: mockRepository);
  });

  group('FetchMotelsUsecase', () {
    test('returns MotelData when repository returns success', () async {
      final dummyMotelData = MotelData(
        page: 1,
        itemsPerPage: 10,
        totalSuites: 5,
        totalMotels: 3,
        radius: 10.5,
        maxPages: 1,
        motels: [],
      );

      when(() => mockRepository.fetchMotels())
          .thenAnswer((_) async => Right(dummyMotelData));

      final result = await usecase();

      expect(result.isRight(), isTrue);
      result.match(
        (l) => fail('Expected Right but got Left'),
        (r) => expect(r, equals(dummyMotelData)),
      );
    });

    test('returns Exception when repository returns failure', () async {
      final dummyException = Exception('Test error');

      when(() => mockRepository.fetchMotels())
          .thenAnswer((_) async => Left(dummyException));

      final result = await usecase();

      expect(result.isLeft(), isTrue);
      result.match(
        (l) => expect(l, equals(dummyException)),
        (r) => fail('Expected Left but got Right'),
      );
    });
  });
}
