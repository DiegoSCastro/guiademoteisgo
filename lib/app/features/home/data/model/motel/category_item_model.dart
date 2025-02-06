import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'category_item_model.freezed.dart';
part 'category_item_model.g.dart';

///CategoryItemModel Model
@freezed
class CategoryItemModel with _$CategoryItemModel {
  /// Constructor of [CategoryItemModel]
  const factory CategoryItemModel({
    @JsonKey(name: 'nome') required String name,
    @JsonKey(name: 'icone') required String icon,
  }) = _CategoryItemModel;
  const CategoryItemModel._();

  /// Convert json [Map] in a [CategoryItemModel]
  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemModelFromJson(json);

  CategoryItem get toEntity => CategoryItem(
        name: name,
        icon: icon,
      );
}
