import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Punto de Venta',
      home: PuntodeVenta(),
    );
  }
}

class Producto {
  final String nombre;
  final double precio;

  Producto({required this.nombre, required this.precio});
}

class PuntodeVenta extends StatelessWidget {
  // Lista de productos
  final List<Producto> productos = [
    Producto(nombre: 'Coca Cola', precio: 17.20),
    Producto(nombre: 'Pepsi', precio: 12.50),
    Producto(nombre: 'Fanta', precio: 15.00),
    Producto(nombre: 'Dr. Pepper', precio: 15.50),
    Producto(nombre: 'Delaware Punch', precio: 14.40),
    Producto(nombre: 'Escuis', precio: 17.30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Punto de Venta'),
        backgroundColor: Color(0xffBFB5A8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Código de Barras  ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 6),
            Text(
              'Nombre del Producto',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Precio (MXN)',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Lista de Productos',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: productos.length,
                itemBuilder: (context, index) {
                  final producto = productos[index];
                  return ListTile(
                    title: Text(producto.nombre),
                    subtitle: Text('\$${producto.precio.toStringAsFixed(2)}'),
                    leading: Text(
                      (index + 1).toString(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xffF2F2F2),
    );
  }
}
