import 'package:fpdart/fpdart.dart';
import 'package:guiademoteisgo/app/app.dart';

abstract interface class ContainsImageUrlUsecase {
  Future<Either<Exception, MotelData>> call();
}

class ContainsImageUrlUsecaseImpl implements ContainsImageUrlUsecase {
  ContainsImageUrlUsecaseImpl({required HomeRepository repository})
      : _repository = repository;

  final HomeRepository _repository;
  @override
  Future<Either<Exception, MotelData>> call() {
    return _repository.fetchMotels();
  }
}
