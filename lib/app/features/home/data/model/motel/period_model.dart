import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guiademoteisgo/app/app.dart';

part 'period_model.freezed.dart';
part 'period_model.g.dart';

@freezed
class PeriodModel with _$PeriodModel {
  const factory PeriodModel({
    @JsonKey(name: 'tempoFormatado') required String formattedTime,
    @JsonKey(name: 'tempo') required String time,
    @JsonKey(name: 'valor') required double price,
    @JsonKey(name: 'valorTotal') required double totalPrice,
    @JsonKey(name: 'temCortesia') required bool hasCourtesy,
    @JsonKey(name: 'desconto') DiscountModel? discount,
  }) = _PeriodModel;
  const PeriodModel._();

  factory PeriodModel.fromJson(Map<String, dynamic> json) =>
      _$PeriodModelFromJson(json);

  Period get toEntity => Period(
        formattedTime: formattedTime,
        time: time,
        price: price,
        totalPrice: totalPrice,
        hasCourtesy: hasCourtesy,
        discount: discount?.toEntity,
      );
}
