import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:vistaventas/Vista/Vagregarproducto.dart';
import 'package:vistaventas/Controlador/add_product_controller.dart';
import 'package:vistaventas/Modelo/producto.dart';
import 'package:vistaventas/widgets/producto_widget.dart';

class VerProductosPage extends StatefulWidget {
  const VerProductosPage({
    super.key,
  });

  @override
  State<VerProductosPage> createState() => _VerProductosPageState();
}

class _VerProductosPageState extends State<VerProductosPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget textoInicio(Producto producto) {
    return Text(
      '${producto.nombre}\n${producto.codigo}\n${producto.categoria}\n${producto.precio}',
      style: GoogleFonts.lato(
        fontSize: 18,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var box = Hive.box<Producto>('productos');
    var productos = box.values.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Ver Productos'),
      ),
      body: Container(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: productos
              .map(
                (producto) => regresarProducto(producto),
              )
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CrearProducto(),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}