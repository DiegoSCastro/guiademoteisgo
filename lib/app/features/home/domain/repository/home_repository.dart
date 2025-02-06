import 'package:fpdart/fpdart.dart';
import 'package:guiademoteisgo/app/features/home/domain/entity/motel_entities/motel_data.dart';

abstract interface class HomeRepository {
  Future<Either<Exception, MotelData>> fetchMotels();
}
