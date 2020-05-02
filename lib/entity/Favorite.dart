import 'package:cookingplan/entity/Food.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'Favorite.g.dart';

@HiveType(typeId: 2)
class Favorite extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  List<Food> foods;

  @HiveField(3)
  String thumbnail;

  @HiveField(4)
  String link;

  @HiveField(5)
  String displayLink;

  @HiveField(6)
  DateTime createdAt;

  @HiveField(7)
  DateTime updatedAt;

  Favorite({
    @required this.title,
    @required this.description,
    @required this.foods,
    @required this.thumbnail,
    @required this.link,
    @required this.displayLink,
    @required this.createdAt,
    @required this.updatedAt,
  });

  factory Favorite.now({
    @required String title,
    @required String description,
    @required List<Food> foods,
    @required String link,
    @required String displayLink,
    @required String thumbnail,
  }) {
    return Favorite(
      title: title,
      description: description,
      foods: foods,
      thumbnail: thumbnail,
      link: link,
      displayLink: displayLink,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
  }
}
