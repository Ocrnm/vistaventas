import 'package:hive/hive.dart';

class AddProductController {

 late BigInt barcode;
 late String nombre;
 late double precio;

 bool isValid = true;

 void addProduct(BigInt barcode, String nombre, double precio) {
    // 1.- Validar primero mis datos de entrada
    // Checar que no esté vacío
    if (barcode == null || nombre.isEmpty || precio == null) {
      isValid = false;
      return;
    }

    // Checar que corresponda al tipo de dato que espero
    if (!(barcode is BigInt) || !(nombre is String) || !(precio is double)) {
      isValid = false;
      return;
    }

    // 2.- Agregar producto a la base de datos
    // Si y solo si la información es válida
    if (isValid) {
      var productos = Hive.box('productos');
      productos.put(barcode, {'nombre': nombre, 'precio': precio}); 
      }
    }
  }
