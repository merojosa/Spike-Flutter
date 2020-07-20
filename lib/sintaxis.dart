import 'package:flutter/material.dart'; // Obligatorio siempre que se este haciendo cosas el Flutter importar esta libreria


class Sintaxis extends StatefulWidget 
{
  @override
  _SintaxisState createState() => _SintaxisState();
}

class _SintaxisState extends State<Sintaxis> 
{
  // Puedo no especificar tipo de dato en el parametro, pero no es recomendable por semantica.
  Widget _metodoPrivadoPorSoloTenerUnderscoreAlInicio(texto)
  {
    // En tiempo de ejecucion se da cuenta que calza como string y todo bien
    return Text(texto);
  }

  // @required notifica a que si o si se tenga que ingresar ese parametro.
  Widget _metodoParaMostrarParametrosBonitos(String texto, {double tamanno, @required Color color, FontWeight estilo})
  {
    // Si no se especifica un parametro, sera null.
    print(estilo);
    return Text(texto, style: TextStyle(fontSize: tamanno, color: color, fontWeight: estilo),);
  }

  // Ojo que podria no tener un tipo de dato en el return tambien
  _botoncitoBonito(Function metodo)
  {
    return Container(

      child: FlatButton(
        onPressed: metodo,
        child: Text("Botón", 
        style: TextStyle(
          fontSize: 20),
        ), 
        textColor: Colors.white,
        color: Colors.blue,),
    );
  }

  Widget _otroBotoncitoBonito(Function metodo, {@required String parametroPrint})
  {
    return Container(

      child: FlatButton(
        onPressed: () => metodo(texto: parametroPrint)
        ,
        child: Text("Botón", 
        style: TextStyle(
          fontSize: 20),
        ), 
        textColor: Colors.white,
        color: Colors.blue,),
    );
  }

  void metodo({String texto})
  {
    texto == null ? print("Texto es null") : print("Texto no es null: " + texto);
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(


      appBar: AppBar(
        title: Text("Sintaxis"),
      ),
      body: Column(children: <Widget>[
        
        _metodoPrivadoPorSoloTenerUnderscoreAlInicio("1"),

        // Ojo, puedo no especificar el parametro estilo.
        _metodoParaMostrarParametrosBonitos("2", tamanno: 30, color: Colors.red),

        // No hay error, simplemente manda un warning
        _metodoParaMostrarParametrosBonitos("3", tamanno: 30),

        // Ojo que solo es el nombre lo que paso, no tengo que poner parentesis
        _botoncitoBonito(metodo),

        _otroBotoncitoBonito(metodo, parametroPrint: "Qué viva la Liga"),

        _botoncitoBonito(() => print("Ocurrió algo")),

        ],
      )

    );
  }
}