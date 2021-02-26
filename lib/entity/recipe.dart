import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';
part 'recipe.g.dart';

@freezed
abstract class Recipe with _$Recipe {
  factory Recipe({
    @nullable int id,
    String title,
    @Default('') String description,
    @Default('') String thumbnail,
    String link,
    @Default('') @JsonKey(name: 'display_link') String displayLink,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime updatedAt,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  factory Recipe.now({
    @required String title,
    @required String description,
    @required String link,
    @required String displayLink,
    @required String thumbnail,
  }) {
    return Recipe(
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
