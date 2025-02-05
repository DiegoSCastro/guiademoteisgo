import 'package:get_it/get_it.dart';
import 'package:guiademoteisgo/app/app.dart';

final injection = GetIt.instance;

void initInjection() {
  injection.registerLazySingleton<RestClient>(HttpRestClient.new);
}
