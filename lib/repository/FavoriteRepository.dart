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

  Future<void> saveFavorite(Favorite food) async {
    _openBox.future.then((box) {
      box.add(food);
    });
  }
}