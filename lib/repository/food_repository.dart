import 'dart:async';

import 'package:cookingplan/database.dart';
import 'package:cookingplan/entity/food.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final foodRepositoryProvider = Provider((_) => FoodRepository());

class FoodRepository {
  FoodRepository();

  Future<List<Food>> getFoods() async {
    var db = await DatabaseProvider.instance().database;
    var result = await db.query(describeEnum(TableName.food), where: 'used = ?', whereArgs: <int>[0]);
    return result.map((item) => Food.fromJson(item)).toList();
  }

  Future<List<Food>> getUsedFoods() async {
    var db = await DatabaseProvider.instance().database;
    var result = await db.query(describeEnum(TableName.food), where: 'used = ?', whereArgs: <int>[1]);
    return result.map((item) => Food.fromJson(item)).toList();
  }

  Future<bool> isExist(String name) async {
    var db = await DatabaseProvider.instance().database;
    var result = await db.query(describeEnum(TableName.food), where: 'name = ?', whereArgs: <String>[name]);
    return result.isNotEmpty;
  }

  Future<Food> saveFood(Food food) async {
    var db = await DatabaseProvider.instance().database;
    var id = await db.insert(describeEnum(TableName.food), food.toJson());
    return food.copyWith(id: id);
  }

  Future<Food> reStock(Food food) async {
    var db = await DatabaseProvider.instance().database;
    var unused = food.copyWith(used: false);
    var id = await db.update(describeEnum(TableName.food), unused.toJson(), where: 'name = ?', whereArgs: <String>[food.name]);
    return unused.copyWith(id: id);
  }

  Future<int> used(Food food) async {
    var db = await DatabaseProvider.instance().database;
    var used = food.copyWith(used: true);
    var id = await db.update(describeEnum(TableName.food), used.toJson(), where: 'id = ?', whereArgs: <int>[food.id]);
    return id;
  }
}
