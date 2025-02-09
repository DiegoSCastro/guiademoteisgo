import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'motel_response_model.freezed.dart';
part 'motel_response_model.g.dart';

@freezed
class MotelResponseModel with _$MotelResponseModel {
  const factory MotelResponseModel({
    @JsonKey(name: 'sucesso') required bool success,
    @JsonKey(name: 'data') required MotelDataModel data,
    @JsonKey(name: 'mensagem') required List<String> message,
  }) = _MotelResponseModel;
  const MotelResponseModel._();

  factory MotelResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MotelResponseModelFromJson(json);
}
