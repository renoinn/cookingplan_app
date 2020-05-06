import 'dart:async';

import 'package:cookingplan/entity/Favorite.dart';
import 'package:hive/hive.dart';

const FAVORITE_BOX = 'favorites';

class FavoriteRepository {
  FavoriteRepository() {
    initBox();
  }

  Completer<Box<Favorite>> _openBox = Completer();

  void initBox() async {
    Hive.openBox<Favorite>(FAVORITE_BOX).then((box) => _openBox.complete(box));
  }

  Future<List<Favorite>> getFavorites() async {
    return _openBox.future.then((box) {
      return box.values.toList();
    });
  }

  Future<void> saveFavorite(Favorite favorite) async {
    _openBox.future.then((box) {
      box.add(favorite);
    });
  }

  Future<bool> isExist(String link) async {
    return _openBox.future.then((box) {
      List<Favorite> item = box.values.where((element) => element.link == link).toList();
      return item.isNotEmpty;
    });
  }

  Future<void> deleteFavorite(String link) async {
    _openBox.future.then((box) {
      Favorite favorite = box.values.firstWhere((element) => element.link == link);
      favorite.delete();
    });
  }
}