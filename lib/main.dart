import 'package:flutter/material.dart';
import 'package:spike/async.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
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

  void _stalessStateful()
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
                onPressed: _stalessStateful,
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
                onPressed: _sintaxis,
                child: Text("Firebase", 
                style: TextStyle(
                  fontSize: 20),
                ), 
                textColor: Colors.white,
                color: Colors.blue,),
            ),


            /*
            _crearBoton(texto: "Sintaxis", metodo: _sintaxis),
            _crearBoton(texto: "Sintaxis", ),
            _crearBoton(texto: "Widgets"),
            _crearBoton(texto: "Staless y Stateful"),
            _crearBoton(texto: "Métodos asincrónicos"),
            _crearBoton(texto: "Firebase")
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
        ), 
        textColor: Colors.white,
        color: Colors.blue,),
    );
  }
}
