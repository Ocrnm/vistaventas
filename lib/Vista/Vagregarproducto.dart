import 'package:flutter/material.dart';
import 'package:vistaventas/Modelo/producto.dart';

class CrearProducto extends StatefulWidget {
  CrearProducto({Key? key}) : super(key: key);

  @override
  State<CrearProducto> createState() => _CrearProductoState();
}

class _CrearProductoState extends State<CrearProducto> {
  final TextEditingController codigoController = TextEditingController();
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController categoriaController = TextEditingController();
  final TextEditingController precioController = TextEditingController();

  bool error_precio = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Producto'),
        backgroundColor: Color(0xffBFB5A8),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ID del producto (barcode)',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: codigoController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.camera_alt), 
                          onPressed: () {
                            // Lógica para escanear el código de barras
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text(
                'Nombre del producto',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: nombreController,
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
                'Categoría del Producto',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: categoriaController,
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
                'Precio del producto',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: precioController,
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
                height: 50.0,
              ),
              SizedBox(
                height: 6.0,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    var producto = Producto(
                      codigo: codigoController.text,
                      nombre: nombreController.text,
                      categoria: categoriaController.text,
                      precio: double.parse(precioController.text),
                    );
                    Navigator.pop(context, producto);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xffBFB5A8)),
                  ),
                  child: Text('Agregar producto'),
                ),
              ), 
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffF2F2F2),
    );
  }
}