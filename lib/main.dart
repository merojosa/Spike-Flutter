import 'package:flutter/material.dart';
import 'package:spike/async.dart';
import 'package:spike/boton.dart';
import 'package:spike/sintaxis.dart';
import 'package:spike/stateless_stateful.dart';
import 'package:spike/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spike Flutter',
      home: MyHomePage(title: 'Spike Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
{
  void _sintaxis()
  {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Sintaxis(),
      ),
    );
  }

  void _widgets()
  {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Widgets(),
      ),
    );
  }

  void _statelessStateful()
  {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MenuStSf(),
      ),
    );
  }

  void _async()
  {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EjemploAsync(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Container(
              width: 350,
              child: FlatButton(
                onPressed: _sintaxis,
                child: Text("Sintaxis", 
                style: TextStyle(
                  fontSize: 20),
                ), 
                textColor: Colors.white,
                color: Colors.blue,),
            ),
            
            Container(
              width: 350,
              child: FlatButton(
                onPressed: _widgets,
                child: Text("Widgets", 
                style: TextStyle(
                  fontSize: 20),
                ), 
                textColor: Colors.white,
                color: Colors.blue,),
            ),

            Container(
              width: 350,
              child: FlatButton(
                onPressed: _statelessStateful,
                child: Text("Stateless y Stateful", 
                style: TextStyle(
                  fontSize: 20),
                ), 
                textColor: Colors.white,
                color: Colors.blue,),
            ),

            Container(
              width: 350,
              child: FlatButton(
                onPressed: _async,
                child: Text("Métodos asincrónicos", 
                style: TextStyle(
                  fontSize: 20),
                ), 
                textColor: Colors.white,
                color: Colors.blue,),
            ),

            Container(
              width: 350,
              child: FlatButton(
                onPressed: null,
                child: Text("Ejemplo (paquetes, Firebase y widgets más complejos)", 
                style: TextStyle(
                  fontSize: 20),
                  textAlign: TextAlign.center,
                ), 
                textColor: Colors.white,
                color: Colors.blue,),
            ),


            /*
            // Si el botoncito solo lo uso aqui
            _crearBoton(texto: "Sintaxis", metodo: _sintaxis),
            _crearBoton(texto: "Widgets", metodo: _widgets),
            _crearBoton(texto: "Staless y Stateful", metodo: _statelessStateful),
            _crearBoton(texto: "Métodos asincrónicos", metodo: _async),
            _crearBoton(texto: "Ejemplo (paquetes, Firebase y widgets más complejos)", metodo: null),
            */

            /*
            // Si el botoncito se va a usar en otros widgets
            BotonBonito(texto: "Sintaxis", metodo: _sintaxis,),
            BotonBonito(texto: "Widgets", metodo: _widgets,),
            BotonBonito(texto: "Staless y Stateful", metodo: _statelessStateful,),
            BotonBonito(texto: "Métodos asincrónicos", metodo: _async,),
            BotonBonito(texto: "Ejemplo (paquetes, Firebase y widgets más complejos)", metodo: null,),
            */
            
            

          ],
        ),
      ),
    );
  }

  Widget _crearBoton({String texto, @required Function metodo})
  {
    return Container(
      width: 350,
      child: FlatButton(
        onPressed: metodo,
        child: Text(texto, 
        style: TextStyle(
          fontSize: 20),
          textAlign: TextAlign.center,
        ), 
        textColor: Colors.white,
        color: Colors.blue,),
    );
  }
}
