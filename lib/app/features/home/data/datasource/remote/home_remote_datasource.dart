import 'package:guiademoteisgo/app/app.dart';

abstract interface class HomeRemoteDatasource {
  Future<MotelResponseModel> fetchMotels();
}
