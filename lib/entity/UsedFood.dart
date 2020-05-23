import 'package:cookingplan/entity/Food.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'UsedFood.g.dart';

@HiveType(typeId: 3)
class UsedFood extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  int count;

  @HiveField(2)
  int usedCount;

  @HiveField(3)
  StorageMethod storageMethod;

  @HiveField(4)
  DateTime createdAt;

  @HiveField(5)
  DateTime updatedAt;

  UsedFood({
    this.name,
    this.count,
    this.usedCount,
    this.storageMethod,
    this.createdAt,
    this.updatedAt,
  });

  factory UsedFood.fromFood({@required Food food}) => UsedFood(
    name: food.name,
    count: food.count,
    usedCount: 1,
    storageMethod: food.storageMethod,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );
}