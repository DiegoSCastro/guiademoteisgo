import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'item_model.freezed.dart';
part 'item_model.g.dart';

///ItemModel Model
@freezed
class ItemModel with _$ItemModel {
  /// Constructor of [ItemModel]
  const factory ItemModel({
    @JsonKey(name: 'nome') required String name,
  }) = _ItemModel;
  const ItemModel._();

  /// Convert json [Map] in a [ItemModel]
  factory ItemModel.fromJson(Map<String, dynamic> json) =>
      _$ItemModelFromJson(json);

  Item get toEntity => Item(name: name);
}
