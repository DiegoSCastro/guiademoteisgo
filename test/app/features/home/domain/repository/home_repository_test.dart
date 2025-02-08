import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:guiademoteisgo/app/app.dart';

class FakeHomeRepository implements HomeRepository {
  FakeHomeRepository({this.shouldFail = false});

  final bool shouldFail;

  @override
  Future<Either<Exception, MotelData>> fetchMotels() async {
    if (shouldFail) {
      return Left(Exception('Fake error'));
    } else {
      final dummyData = MotelData(
        page: 1,
        itemsPerPage: 10,
        totalSuites: 5,
        totalMotels: 3,
        radius: 10.5,
        maxPages: 1,
        motels: [],
      );
      return Right(dummyData);
    }
  }
}

void main() {
  group('HomeRepository', () {
    test('returns Right(MotelData) when operation is successful', () async {
      final repository = FakeHomeRepository();
      final result = await repository.fetchMotels();

      expect(result.isRight(), isTrue);
      result.match(
        (l) => fail('Expected Right but got Left'),
        (r) {
          expect(r, isA<MotelData>());
          expect(r.totalMotels, equals(3));
        },
      );
    });

    test('returns Left(Exception) when operation fails', () async {
      final repository = FakeHomeRepository(shouldFail: true);
      final result = await repository.fetchMotels();

      expect(result.isLeft(), isTrue);
      result.match(
        (l) {
          expect(l, isA<Exception>());
          expect(l.toString(), contains('Fake error'));
        },
        (r) => fail('Expected Left but got Right'),
      );
    });
  });
}
