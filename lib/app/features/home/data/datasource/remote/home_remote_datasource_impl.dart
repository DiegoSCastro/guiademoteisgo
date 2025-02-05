import 'package:guiademoteisgo/app/app.dart';

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  const HomeRemoteDatasourceImpl({required RestClient restClient})
      : _restClient = restClient;
  final RestClient _restClient;

  @override
  Future<MotelResponseModel> fetchMotels() async {
    const apiUrl = '${AppEnv.baseUrl}/random.json';
    final response = await _restClient.get(apiUrl);
    return MotelResponseModel.fromJson(response);
  }
}
