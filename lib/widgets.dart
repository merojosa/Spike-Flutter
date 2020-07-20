import 'package:flutter/material.dart';

// https://flutter.dev/docs/development/ui/widgets
class Widgets extends StatefulWidget {
  @override
  _WidgetsState createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(


      appBar: AppBar(
        title: Text("Widgets"),
      ),
      body: ListView(
        children: <Widget>[

          Center(child: Text("Imagen desde assets", style: TextStyle(fontSize: 30),),),
        
          Image.asset("assets/images/carro.jpg"),

          Center(child: Text("Imagen desde network", style: TextStyle(fontSize: 30),),),

          Image.network("https://i.picsum.photos/id/313/200/300.jpg?hmac=7_pHHv7TyDti50LaIVPvCPkdWDgM0tcX3ViCIWruEDQ"),

          Center(child: Text("Icon", style: TextStyle(fontSize: 30),),),

          Icon(Icons.people, size: 100,),

          Center(child: Text("Input", style: TextStyle(fontSize: 30),),),

          Padding(
            padding: EdgeInsets.only(right: 32.0, left: 32.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Por favor ingrese texto',
              )
            ),
          ),

          Center(child: Text("Botón", style: TextStyle(fontSize: 30),),),



          RaisedButton(
            onPressed: () {},
            child: const Text(
              'Botón',
              style: TextStyle(fontSize: 20)
            ),
          ),

          // Ver main para entender la importancia de la modularizacion

        ],
      )

    );
  }
}