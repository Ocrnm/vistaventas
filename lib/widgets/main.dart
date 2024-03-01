import 'package:vistaventas/Vista/Vagregarproducto.dart';
import 'package:vistaventas/Modelo/producto.dart';
import 'package:vistaventas/Vista/Vmenu.dart';
import 'package:vistaventas/Vista/Valmacen.dart';
import 'package:vistaventas/Vista/Valmacen_lproductos.dart';
import 'package:vistaventas/Vista/Vcarrito.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('productos');
  Hive.openBox('categorias');
  // await box.clear();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VistaMenu(),
    );
  }
}
