import 'package:fpdart/fpdart.dart';
import 'package:guiademoteisgo/app/features/home/domain/entity/motel/motel_data.dart';

abstract interface class HomeRepository {
  Future<Either<Exception, MotelData>> fetchMotels();
}
