import 'package:flutter/material.dart';
import 'package:vistaventas/Vista/main.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VistaMenu(),
      routes: {
        '/venta': (context) => PuntodeVenta(),
      },
    );
  }
}

class VistaMenu extends StatelessWidget{
    @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xffBFB5A8),
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PuntodeVenta()),
            );
          },
          child: Text('Venta'),
        ),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // Add your code here
              },
              child: Text('Button 1'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add your code here
              },
              child: Text('Button 2'),
            ),
          ],
        ),
      ),
    );
  }
}