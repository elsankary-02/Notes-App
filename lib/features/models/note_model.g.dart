// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteItemsModelAdapter extends TypeAdapter<NoteItemsModel> {
  @override
  final int typeId = 0;

  @override
  NoteItemsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteItemsModel(
      number: fields[4] as int,
      titel: fields[0] as String,
      description: fields[1] as String,
      delete: fields[2] as Icon,
      date: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NoteItemsModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.titel)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.delete)
      ..writeByte(3)
      ..write(obj.date)
      ..writeByte(4)
      ..write(obj.number);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteItemsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
