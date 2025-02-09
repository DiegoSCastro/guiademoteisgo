import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'discount_model.freezed.dart';
part 'discount_model.g.dart';

@freezed
class DiscountModel with _$DiscountModel {
  const factory DiscountModel({
    @JsonKey(name: 'desconto') required double discount,
  }) = _DiscountModel;
  const DiscountModel._();

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);

  Discount get toEntity => Discount(
        discount: discount,
      );
}
