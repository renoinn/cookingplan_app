import 'package:cookingplan/entity/food.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  factory HomeState({
    @Default(<Food>[]) List<Food> foods,
    @Default(<Food>[]) List<Food> selectedFoods,
    @Default(<Food>[]) List<Food> usedFoods,
  }) = _HomeState;
}
