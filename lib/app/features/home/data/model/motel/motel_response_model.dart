import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'motel_response_model.freezed.dart';
part 'motel_response_model.g.dart';

///MotelResponseModel Model
@freezed
class MotelResponseModel with _$MotelResponseModel {
  /// Constructor of [MotelResponseModel]
  const factory MotelResponseModel({
    @JsonKey(name: 'sucesso') required bool success,
    @JsonKey(name: 'data') required MotelDataModel data,
    @JsonKey(name: 'mensagem') required List<String> message,
  }) = _MotelResponseModel;
  const MotelResponseModel._();

  /// Convert json [Map] in a [MotelResponseModel]
  factory MotelResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MotelResponseModelFromJson(json);
}
