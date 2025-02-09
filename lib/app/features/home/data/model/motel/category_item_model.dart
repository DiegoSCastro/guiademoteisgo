import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'category_item_model.freezed.dart';
part 'category_item_model.g.dart';

@freezed
class CategoryItemModel with _$CategoryItemModel {
  const factory CategoryItemModel({
    @JsonKey(name: 'nome') required String name,
    @JsonKey(name: 'icone') required String icon,
  }) = _CategoryItemModel;
  const CategoryItemModel._();

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemModelFromJson(json);

  CategoryItem get toEntity => CategoryItem(
        name: name,
        icon: icon,
      );
}
