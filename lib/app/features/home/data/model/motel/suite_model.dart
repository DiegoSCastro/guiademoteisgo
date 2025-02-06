import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'suite_model.freezed.dart';
part 'suite_model.g.dart';

///SuiteModel Model
@freezed
class SuiteModel with _$SuiteModel {
  /// Constructor of [SuiteModel]
  const factory SuiteModel({
    @JsonKey(name: 'nome') required String name,
    @JsonKey(name: 'qtd') required int quantity,
    @JsonKey(name: 'exibirQtdDisponiveis') required bool showAvailableQuantity,
    @JsonKey(name: 'fotos') required List<String> photos,
    @JsonKey(name: 'itens') required List<ItemModel> items,
    @JsonKey(name: 'categoriaItens')
    required List<CategoryItemModel> categoryItems,
    @JsonKey(name: 'periodos') required List<PeriodModel> periods,
  }) = _SuiteModel;
  const SuiteModel._();

  /// Convert json [Map] in a [SuiteModel]
  factory SuiteModel.fromJson(Map<String, dynamic> json) =>
      _$SuiteModelFromJson(json);

  Suite get toEntity => Suite(
        name: name,
        quantity: quantity,
        showAvailableQuantity: showAvailableQuantity,
        photos: photos,
        items: items.map((item) => item.toEntity).toList(),
        categoryItems:
            categoryItems.map((categoryItem) => categoryItem.toEntity).toList(),
        periods: periods.map((period) => period.toEntity).toList(),
      );
}
