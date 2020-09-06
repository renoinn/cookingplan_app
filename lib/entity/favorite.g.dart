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
    displayLink: json['displayLink'] as String ?? '',
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_FavoriteToJson(_$_Favorite instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
      'link': instance.link,
      'displayLink': instance.displayLink,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
