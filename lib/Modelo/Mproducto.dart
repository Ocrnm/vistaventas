class Producto {
  BigInt barcode;
  String nombre;
  double precio;

  Producto({
    required this.barcode,
    required this.nombre,
    required this.precio, 
  });

  Map<String, dynamic> toMap() {
    return {
      'Codigo de barras': barcode,
      'Nombre': nombre,
      'Precio': precio,
    };

  }
}