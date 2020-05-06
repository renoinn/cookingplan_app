import 'package:cookingplan/entity/Favorite.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'favorite_state.freezed.dart';

@freezed
abstract class FavoriteState with _$FavoriteState {

  factory FavoriteState({
    @Default(<Favorite>[]) List<Favorite> favorites,
  }) = _FavoriteState;
}