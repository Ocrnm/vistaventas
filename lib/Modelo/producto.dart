import 'package:hive_flutter/hive_flutter.dart';

part 'producto.g.dart';

@HiveType(typeId: 0)
class Producto extends HiveObject {
  @HiveField(0)
  String codigo;
  @HiveField(1)
  String nombre;
  @HiveField(2)
  String categoria;
  @HiveField(3)
  double precio;

  int cantidad = 0;

  Producto({
    required this.codigo,
    required this.nombre,
    required this.precio,
    required this.categoria,
  });

  @override
  String toString() {
    return 'Producto(codigo: $codigo, nombre: $nombre, precio: $precio, categoria: $categoria)';
  }
}