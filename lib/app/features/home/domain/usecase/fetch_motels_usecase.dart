import 'package:fpdart/fpdart.dart';
import 'package:guiademoteisgo/app/app.dart';

abstract interface class FetchMotelsUsecase {
  Future<Either<Exception, MotelData>> call();
}

class FetchMotelsUsecaseImpl implements FetchMotelsUsecase {
  FetchMotelsUsecaseImpl({required HomeRepository repository})
      : _repository = repository;

  final HomeRepository _repository;
  @override
  Future<Either<Exception, MotelData>> call() {
    return _repository.fetchMotels();
  }
}
