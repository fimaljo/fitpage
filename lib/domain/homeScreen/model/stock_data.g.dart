// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockData _$StockDataFromJson(Map<String, dynamic> json) => StockData(
      id: json['id'] as int?,
      name: json['name'] as String?,
      tag: json['tag'] as String?,
      color: json['color'] as String?,
      criteria: (json['criteria'] as List<dynamic>?)
              ?.map((e) => Criterion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StockDataToJson(StockData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tag': instance.tag,
      'color': instance.color,
      'criteria': instance.criteria,
    };

Criterion _$CriterionFromJson(Map<String, dynamic> json) => Criterion(
      type: json['type'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$CriterionToJson(Criterion instance) => <String, dynamic>{
      'type': instance.type,
      'text': instance.text,
    };
