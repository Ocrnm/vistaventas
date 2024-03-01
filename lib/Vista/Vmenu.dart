import 'package:flutter/material.dart';
import 'package:vistaventas/Vista/Valmacen.dart';
import 'package:vistaventas/Vista/Vcarrito.dart';
import 'package:vistaventas/Vista/Vagregarproducto.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       debugShowCheckedModeBanner: false,
      home: VistaMenu(),
      routes: {
        '/venta': (context) => CrearProducto(),
      },
    );
  }
}

class VistaMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBFB5A8),
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CarritoPage()),
            );
              },
              child: Text('Carrito de Compras'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Valmacen()),
            );
              },
              child: Text('Almacen'),
            ),
          ],
        ),
      ),
    );
  }
}
