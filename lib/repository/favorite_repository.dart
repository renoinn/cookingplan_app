import 'dart:async';

import 'package:cookingplan/database.dart';
import 'package:cookingplan/entity/favorite.dart';
import 'package:flutter/foundation.dart';

class FavoriteRepository {
  FavoriteRepository();

  Future<List<Favorite>> getFavorites() async {
    var db = await DatabaseProvider.instance().database;
    var result = await db.query(describeEnum(TableName.favorite));
    return result.map((item) => Favorite.fromJson(item)).toList();
  }

  Future<Favorite> saveFavorite(Favorite favorite) async {
    var db = await DatabaseProvider.instance().database;
    var id = await db.insert(describeEnum(TableName.favorite), favorite.toJson());
    return favorite.copyWith(id: id);
  }

  Future<bool> isExist(String link) async {
    var db = await DatabaseProvider.instance().database;
    var result = await db.query(describeEnum(TableName.favorite), where: 'link = ?', whereArgs: <String>[link]);
    return result.isNotEmpty;
  }

  Future<int> deleteFavorite(String link) async {
    var db = await DatabaseProvider.instance().database;
    var id = await db.delete(describeEnum(TableName.favorite), where: 'link = ?', whereArgs: <String>[link]);
    return id;
  }
}
