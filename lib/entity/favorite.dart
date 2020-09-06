import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
abstract class Favorite with _$Favorite {
  factory Favorite({
    @nullable int id,
    String title,
    @Default('') String description,
    @Default('') String thumbnail,
    String link,
    @Default('') String displayLink,
    DateTime createdAt,
    DateTime updatedAt,
  }) = _Favorite;

  factory Favorite.fromJson(Map<String, dynamic> json) => _$FavoriteFromJson(json);

  factory Favorite.now({
    @required String title,
    @required String description,
    @required String link,
    @required String displayLink,
    @required String thumbnail,
  }) {
    return Favorite(
      title: title,
      description: description,
      thumbnail: thumbnail,
      link: link,
      displayLink: displayLink,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
