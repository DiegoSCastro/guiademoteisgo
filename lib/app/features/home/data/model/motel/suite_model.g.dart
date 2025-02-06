// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuiteModelImpl _$$SuiteModelImplFromJson(Map<String, dynamic> json) =>
    _$SuiteModelImpl(
      name: json['nome'] as String,
      quantity: (json['qtd'] as num).toInt(),
      showAvailableQuantity: json['exibirQtdDisponiveis'] as bool,
      photos: (json['fotos'] as List<dynamic>).map((e) => e as String).toList(),
      items: (json['itens'] as List<dynamic>)
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryItems: (json['categoriaItens'] as List<dynamic>)
          .map((e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      periods: (json['periodos'] as List<dynamic>)
          .map((e) => PeriodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SuiteModelImplToJson(_$SuiteModelImpl instance) =>
    <String, dynamic>{
      'nome': instance.name,
      'qtd': instance.quantity,
      'exibirQtdDisponiveis': instance.showAvailableQuantity,
      'fotos': instance.photos,
      'itens': instance.items,
      'categoriaItens': instance.categoryItems,
      'periodos': instance.periods,
    };
