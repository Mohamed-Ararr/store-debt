// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OwnerModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OwnerModelAdapter extends TypeAdapter<OwnerModel> {
  @override
  final int typeId = 0;

  @override
  OwnerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OwnerModel(
      ownerFN: fields[0] as String,
      ownerLN: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OwnerModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.ownerFN)
      ..writeByte(1)
      ..write(obj.ownerLN);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OwnerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
