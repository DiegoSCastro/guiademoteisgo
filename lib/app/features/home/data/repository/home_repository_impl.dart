import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:guiademoteisgo/app/app.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({required HomeRemoteDatasource remoteDatasource})
      : _remoteDatasource = remoteDatasource;

  final HomeRemoteDatasource _remoteDatasource;
  @override
  Future<Either<Exception, MotelData>> fetchMotels() async {
    try {
      final result = await _remoteDatasource.fetchMotels();
      return Right(result.data.toEntity);
    } on HttpException catch (e) {
      return Left(HttpException(e.toString()));
    } on RepositoryException catch (e) {
      return Left(Exception(e.toString()));
    } on Exception catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
