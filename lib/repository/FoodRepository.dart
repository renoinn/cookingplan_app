import 'dart:async';

import 'package:cookingplan/entity/Food.dart';
import 'package:hive/hive.dart';

const FOODS_BOX = 'foods';

class FoodRepository {
  FoodRepository() {
    initBox();
  }

  Completer<Box<Food>> _openBox = Completer();

  void initBox() async {
    Hive.openBox<Food>(FOODS_BOX).then((box) => _openBox.complete(box));
  }

  Future<List<Food>> getFoods() async {
    return _openBox.future.then((box) {
      return box.values.toList();
    });
  }

  Future<void> saveFood(Food food) async {
    _openBox.future.then((box) {
      box.add(food);
    });
  }

}