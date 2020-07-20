import 'package:flutter/material.dart';
import 'package:spike/staless.dart';
import 'package:spike/stateful.dart';

class MenuStSf extends StatefulWidget {
  @override
  _MenuStSfState createState() => _MenuStSfState();
}

class _MenuStSfState extends State<MenuStSf> 
{
  void _stateless()
  {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EjemploStateless(texto: "Contador stateless", colorTexto: Colors.red,),
      ),
    );
  }

  void _stateful()
  {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EjemploStateful(texto: "Contador stateful",),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text("Sintaxis"),
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 32.0, right: 32.0),
          child: Row(
            children: <Widget>[
            
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: _stateless,
                child: const Text(
                  'Stateless',
                  style: TextStyle(fontSize: 20)
                ),
              ),

              Spacer(),

              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: _stateful,
                child: const Text(
                  'Stateful',
                  style: TextStyle(fontSize: 20)
                ),
              ),
            
            ],
          ),
          
        )
        
      )

    );
  }
}