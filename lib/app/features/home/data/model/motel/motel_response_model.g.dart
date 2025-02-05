// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motel_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MotelResponseModelImpl _$$MotelResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MotelResponseModelImpl(
      success: json['sucesso'] as bool,
      data: MotelDataModel.fromJson(json['data'] as Map<String, dynamic>),
      message:
          (json['mensagem'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$MotelResponseModelImplToJson(
        _$MotelResponseModelImpl instance) =>
    <String, dynamic>{
      'sucesso': instance.success,
      'data': instance.data,
      'mensagem': instance.message,
    };
