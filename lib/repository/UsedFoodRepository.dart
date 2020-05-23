import 'dart:async';

import 'package:cookingplan/entity/UsedFood.dart';
import 'package:hive/hive.dart';

const USED_FOODS_BOX = 'used_foods';

class UsedFoodRepository {
  UsedFoodRepository() {
    initBox();
  }

  Completer<Box<UsedFood>> _openBox = Completer();

  void initBox() async {
    Hive.openBox<UsedFood>(USED_FOODS_BOX).then((box) => _openBox.complete(box));
  }

  Future<List<UsedFood>> getUsedFoods() async {
    return _openBox.future.then((box) {
      return box.values.toList();
    });
  }

  Future<bool> isExist(String name) async {
    return _openBox.future.then((box) {
      List<UsedFood> item = box.values.where((element) => element.name == name).toList();
      return item.isNotEmpty;
    });
  }

  Future<void> saveUsedFood(UsedFood usedFood) async {
    _openBox.future.then((box) {
      box.add(usedFood);
    });
  }

}