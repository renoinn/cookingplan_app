import 'package:cookingplan/entity/recipe.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {
  factory FavoriteState({
    @Default(<Recipe>[]) List<Recipe> favorites,
  }) = _FavoriteState;
}
