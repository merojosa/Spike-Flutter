import 'package:flutter/material.dart';


class EjemploAsync extends StatefulWidget {
  @override
  _EjemploAsyncState createState() => _EjemploAsyncState();
}

class _EjemploAsyncState extends State<EjemploAsync> 
{
  String texto = "Antes";
  Future<String> _metodoAsync()
  {
    return Future.delayed(
      Duration(seconds: 2),
      () => 'Después'
    );
  }

  void _metodo()
  {
    _metodoAsync().then((value) => _cambiarEstado(value));
  }

  void _cambiarEstado(String textoParam)
  {
    setState(() {
      texto = textoParam;
    });
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(


      appBar: AppBar(
        title: Text("Async"),
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 32.0, right: 32.0),
          child: Text(texto, style: TextStyle(fontSize: 30),)
          ),
          
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _metodo,
        child: Icon(Icons.android),
        backgroundColor: Colors.blue,
      ),

    );
  }
}