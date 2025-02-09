import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'motel_data_model.freezed.dart';
part 'motel_data_model.g.dart';

@freezed
class MotelDataModel with _$MotelDataModel {
  const factory MotelDataModel({
    @JsonKey(name: 'pagina') required int page,
    @JsonKey(name: 'qtdPorPagina') required int itemsPerPage,
    @JsonKey(name: 'totalSuites') required int totalSuites,
    @JsonKey(name: 'totalMoteis') required int totalMotels,
    @JsonKey(name: 'raio') required double radius,
    @JsonKey(name: 'maxPaginas') required int maxPages,
    @JsonKey(name: 'moteis') required List<MotelModel> motels,
  }) = _MotelDataModel;
  const MotelDataModel._();

  factory MotelDataModel.fromJson(Map<String, dynamic> json) =>
      _$MotelDataModelFromJson(json);

  MotelData get toEntity => MotelData(
        page: page,
        itemsPerPage: itemsPerPage,
        totalSuites: totalSuites,
        totalMotels: totalMotels,
        radius: radius,
        maxPages: maxPages,
        motels: motels.map((motel) => motel.toEntity).toList(),
      );
}
