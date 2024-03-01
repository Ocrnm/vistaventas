// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductoAdapter extends TypeAdapter<Producto> {
  @override
  final int typeId = 0;

  @override
  Producto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Producto(
      codigo: fields[0] as String,
      nombre: fields[1] as String,
      precio: fields[3] as double,
      categoria: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Producto obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.codigo)
      ..writeByte(1)
      ..write(obj.nombre)
      ..writeByte(2)
      ..write(obj.categoria)
      ..writeByte(3)
      ..write(obj.precio);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}