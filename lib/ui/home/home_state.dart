import 'package:cookingplan/entity/Food.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {

  const factory HomeState({
    @Default(<Food>[]) List<Food> foods,
    @Default(<Food>[]) List<Food> selectedFoods,
  }) = _HomeState;

}