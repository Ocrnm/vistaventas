import 'package:flutter/material.dart';
import 'package:vistaventas/Vista/Vagregarproducto.dart';
import 'package:vistaventas/Vista/Valmacen_lproductos.dart';

class Valmacen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Almacen'),
        backgroundColor: Color(0xffBFB5A8),
      ),
      body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CrearProducto()),
            );
                    },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                    child: SizedBox(
                      width: 132,
                      child: Text('Altas',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    )
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VerProductosPage()),
            );
                    },
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                    child: SizedBox(
                      width: 132,
                      child: Text('Ver Productos',
                       style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    )
                  ),
                  ElevatedButton(
                    onPressed: () {
            //                     Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Valmacen_lproductos()),
            // );
                    },
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                    child: SizedBox(
                      width: 132,
                      child: Text('Modificar Producto',
                       style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    )
                  ),
                  ElevatedButton(
                    onPressed: () {
            //           Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Valmacen_lproductos()),
            // );
                    },
                    style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                    child: SizedBox(
                      width: 132,
                      child: Text('Bajas',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                      ),
                    )
                  ),
                ],
              ),
            ),
          );
          throw UnimplementedError();
        }
}