// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ItemNoteModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ItemnotemodelAdapter extends TypeAdapter<Itemnotemodel> {
  @override
  final int typeId = 0;

  @override
  Itemnotemodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Itemnotemodel(
      time: fields[2] as String,
      color: fields[3] as int,
      subtitle: fields[1] as String,
      title: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Itemnotemodel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.subtitle)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemnotemodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
