// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypted_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserTwoAdapter extends TypeAdapter<UserTwo> {
  @override
  final int typeId = 0;

  @override
  UserTwo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserTwo(
      fields[0] as String,
      fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, UserTwo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.age);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserTwoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
