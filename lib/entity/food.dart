import 'package:freezed_annotation/freezed_annotation.dart';

part 'food.freezed.dart';
part 'food.g.dart';

@freezed
abstract class Food with _$Food {
  factory Food({
    @nullable int id,
    @Default('') String name,
    @BoolConverter() @Default(false) bool used,
    DateTime createdAt,
    DateTime updatedAt,
  }) = _Food;

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  factory Food.withName(String name) => Food(
        name: name,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}

class BoolConverter implements JsonConverter<bool, int> {
  const BoolConverter();

  @override
  bool fromJson(int value) {
    return value == 1;
  }

  @override
  int toJson(bool object) {
    return object ? 1 : 0;
  }
}
