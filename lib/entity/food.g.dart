// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Food _$_$_FoodFromJson(Map<String, dynamic> json) {
  return _$_Food(
    id: json['id'] as int,
    name: json['name'] as String ?? '',
    used: const BoolConverter().fromJson(json['used'] as int) ?? false,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'used': const BoolConverter().toJson(instance.used),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
