// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'motel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MotelModelImpl _$$MotelModelImplFromJson(Map<String, dynamic> json) =>
    _$MotelModelImpl(
      name: json['fantasia'] as String,
      logo: json['logo'] as String,
      neighborhood: json['bairro'] as String,
      distance: (json['distancia'] as num).toDouble(),
      favoriteCount: (json['qtdFavoritos'] as num).toInt(),
      suites: (json['suites'] as List<dynamic>)
          .map((e) => SuiteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewCount: (json['qtdAvaliacoes'] as num).toInt(),
      rating: (json['media'] as num).toDouble(),
    );

Map<String, dynamic> _$$MotelModelImplToJson(_$MotelModelImpl instance) =>
    <String, dynamic>{
      'fantasia': instance.name,
      'logo': instance.logo,
      'bairro': instance.neighborhood,
      'distancia': instance.distance,
      'qtdFavoritos': instance.favoriteCount,
      'suites': instance.suites,
      'qtdAvaliacoes': instance.reviewCount,
      'media': instance.rating,
    };
