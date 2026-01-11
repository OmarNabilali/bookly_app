// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_entitys.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookEntitysAdapter extends TypeAdapter<BookEntitys> {
  @override
  final int typeId = 0;

  @override
  BookEntitys read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookEntitys(
      imgUrl: fields[0] as String?,
      author: fields[1] as String?,
      title: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BookEntitys obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.imgUrl)
      ..writeByte(1)
      ..write(obj.author)
      ..writeByte(2)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookEntitysAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
