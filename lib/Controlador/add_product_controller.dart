import 'package:hive/hive.dart';

class AddProductController {
  late int barcode;
  late String nombre;
  late String categoria;
  late double precio;

  bool isValid = true;

  void agregarProducto(int barcode, String nombre, String categoria, double precio) {
    // 1.- Validar primero mis datos de entrada
    // Checar que no estén vacíos
    if (barcode == null || nombre.isEmpty || categoria.isEmpty || precio == null) {
      isValid = false;
      return;
    }

    // Checar que corresponda al tipo de dato que espero
    if (!(barcode is int) || !(nombre is String) || !(categoria is String) || !(precio is double)) {
      isValid = false;
      return;
    }

    // 2.- Agregar producto a la base de datos
    // Solo si la información es válida
    if (isValid) {
      var productos = Hive.box('productos');
      productos.put(barcode, {'nombre': nombre, 'categoria': categoria, 'precio': precio}); 
    }
  }
}