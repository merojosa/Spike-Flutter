import 'package:flutter/material.dart';

class BotonBonito extends StatelessWidget {

  final Function metodo;
  final String texto;

  const BotonBonito({Key key, this.metodo, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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