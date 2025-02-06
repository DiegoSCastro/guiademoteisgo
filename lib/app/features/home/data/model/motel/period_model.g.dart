// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PeriodModelImpl _$$PeriodModelImplFromJson(Map<String, dynamic> json) =>
    _$PeriodModelImpl(
      formattedTime: json['tempoFormatado'] as String,
      time: json['tempo'] as String,
      price: (json['valor'] as num).toDouble(),
      totalPrice: (json['valorTotal'] as num).toDouble(),
      hasCourtesy: json['temCortesia'] as bool,
      discount: json['desconto'] == null
          ? null
          : DiscountModel.fromJson(json['desconto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PeriodModelImplToJson(_$PeriodModelImpl instance) =>
    <String, dynamic>{
      'tempoFormatado': instance.formattedTime,
      'tempo': instance.time,
      'valor': instance.price,
      'valorTotal': instance.totalPrice,
      'temCortesia': instance.hasCourtesy,
      'desconto': instance.discount,
    };
