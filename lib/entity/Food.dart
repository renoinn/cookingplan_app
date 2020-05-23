import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'Food.g.dart';

@HiveType(typeId: 0)
enum StorageMethod {
  @HiveField(0)
  Chilled,

  @HiveField(1)
  Frozen
}

@HiveType(typeId: 1)
class Food extends HiveObject {

  @HiveField(0)
  String name;

  @HiveField(1)
  int count;

  @HiveField(2)
  StorageMethod storageMethod;

  @HiveField(3)
  DateTime createdAt;

  @HiveField(4)
  DateTime updatedAt;

  Food({
    this.name,
    this.count,
    this.storageMethod,
    this.createdAt,
    this.updatedAt,
  });

  factory Food.withName({@required String name, int count = 0, StorageMethod storageMethod = StorageMethod.Chilled,}) => Food(
    name: name,
    count: count,
    storageMethod: storageMethod,
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
  );
}