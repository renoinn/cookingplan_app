import 'package:cookingplan/entity/food.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  factory SearchState({
    @Default(<Food>[]) List<Food> selectedFoods,
    @Default(<SearchResultItem>[]) List<SearchResultItem> results,
    @Default(0) int page,
  }) = _SearchState;
}

@freezed
abstract class SearchResultItem with _$SearchResultItem {
  factory SearchResultItem({
    String title,
    String description,
    String foodstuff,
    String thumbnail,
    String link,
    String displayLink,
    bool favorite,
  }) = _SearchResultItem;
}
