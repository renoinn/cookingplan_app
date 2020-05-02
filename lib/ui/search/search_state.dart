import 'package:cookingplan/entity/Food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {

  factory SearchState({
    List<Food> selectedFoods,
    List<SearchResultItem> results,
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
  }) = _SearchResultItem;
}