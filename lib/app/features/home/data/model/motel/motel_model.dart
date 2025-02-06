import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'motel_model.freezed.dart';
part 'motel_model.g.dart';

///MotelModel Model
@freezed
class MotelModel with _$MotelModel {
  /// Constructor of [MotelModel]
  const factory MotelModel({
    @JsonKey(name: 'fantasia') required String name,
    @JsonKey(name: 'logo') required String logo,
    @JsonKey(name: 'bairro') required String neighborhood,
    @JsonKey(name: 'distancia') required double distance,
    @JsonKey(name: 'qtdFavoritos') required int favoriteCount,
    @JsonKey(name: 'suites') required List<SuiteModel> suites,
    @JsonKey(name: 'qtdAvaliacoes') required int reviewCount,
    @JsonKey(name: 'media') required double rating,
  }) = _MotelModel;
  const MotelModel._();

  /// Convert json [Map] in a [MotelModel]
  factory MotelModel.fromJson(Map<String, dynamic> json) =>
      _$MotelModelFromJson(json);

  Motel get toEntity => Motel(
        name: name,
        logo: logo,
        neighborhood: neighborhood,
        distance: distance,
        favoriteCount: favoriteCount,
        suites: suites.map((suite) => suite.toEntity).toList(),
        reviewCount: reviewCount,
        rating: rating,
      );
}
