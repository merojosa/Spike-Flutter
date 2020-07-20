import 'package:flutter/material.dart';

class EjemploStateful extends StatefulWidget 
{
  final String texto;
  final Color colorTexto;

  const EjemploStateful({Key key, @required this.texto, this.colorTexto}) : super(key: key);
  
  @override
  _EjemploStatefulState createState() => _EjemploStatefulState();
}

class _EjemploStatefulState extends State<EjemploStateful> 
{
  int contador;

  @override
  void initState()
  {
    super.initState();
    contador = 0;
    print("initState");
  }

  @override
  Widget build(BuildContext context) 
  {
    print("build");
    return Scaffold(
      appBar: AppBar(title: Text("Stateful")),

      body: Center(
        child: Text(
          widget.texto + " $contador", 
          textAlign: TextAlign.center, 
          style: TextStyle(
            color: widget.colorTexto,
            fontSize: 60),
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () 
        {
          setState(() 
          {
            ++contador;
          });
          print(contador);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}