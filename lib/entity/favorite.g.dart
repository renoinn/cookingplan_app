// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Favorite _$_$_FavoriteFromJson(Map<String, dynamic> json) {
  return _$_Favorite(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String ?? '',
    thumbnail: json['thumbnail'] as String ?? '',
    link: json['link'] as String,
    displayLink: json['display_link'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$_$_FavoriteToJson(_$_Favorite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'link': instance.link,
      'display_link': instance.displayLink,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
