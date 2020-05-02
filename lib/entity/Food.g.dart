// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Food.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StorageMethodAdapter extends TypeAdapter<StorageMethod> {
  @override
  final typeId = 0;

  @override
  StorageMethod read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return StorageMethod.Chilled;
      case 1:
        return StorageMethod.Frozen;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, StorageMethod obj) {
    switch (obj) {
      case StorageMethod.Chilled:
        writer.writeByte(0);
        break;
      case StorageMethod.Frozen:
        writer.writeByte(1);
        break;
    }
  }
}

class FoodAdapter extends TypeAdapter<Food> {
  @override
  final typeId = 1;

  @override
  Food read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Food(
      name: fields[0] as String,
      count: fields[1] as int,
      storageMethod: fields[2] as StorageMethod,
      createdAt: fields[3] as DateTime,
      updatedAt: fields[4] as DateTime,
      deletedAt: fields[5] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, Food obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.count)
      ..writeByte(2)
      ..write(obj.storageMethod)
      ..writeByte(3)
      ..write(obj.createdAt)
      ..writeByte(4)
      ..write(obj.updatedAt)
      ..writeByte(5)
      ..write(obj.deletedAt);
  }
}
