import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    @JsonKey(name: 'nome') required String name,
  }) = _ItemModel;
  const ItemModel._();

  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);

  Item get toEntity => Item(name: name);
}
