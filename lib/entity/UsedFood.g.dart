// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UsedFood.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsedFoodAdapter extends TypeAdapter<UsedFood> {
  @override
  final typeId = 3;

  @override
  UsedFood read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UsedFood(
      name: fields[0] as String,
      count: fields[1] as int,
      usedCount: fields[2] as int,
      storageMethod: fields[3] as StorageMethod,
      createdAt: fields[4] as DateTime,
      updatedAt: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, UsedFood obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.usedCount)
      ..writeByte(3)
      ..write(obj.storageMethod)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.updatedAt);
  }
}
