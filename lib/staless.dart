import 'package:flutter/material.dart';

class EjemploStateless extends StatelessWidget 
{
  final String texto;
  final Color colorTexto;

  // Esto deberia de tener un const, pero es para mostrar el ejemplo
  EjemploStateless({Key key, @required this.texto, this.colorTexto}) : super(key: key);

  int contador = 0;

  @override
  Widget build(BuildContext context) 
  {
    print("build");

    return Scaffold(
      appBar: AppBar(title: Text("Staless")),

      body: Center(
        child: Text(
          texto + " $contador", 
          textAlign: TextAlign.center, 
          style: TextStyle(
            color: colorTexto,
            fontSize: 60),
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () 
        {
          ++contador;
          print(contador);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}