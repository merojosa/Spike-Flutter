import 'package:flutter/material.dart';

class EjemploCheckbox extends StatefulWidget {
  @override
  _EjemploCheckboxState createState() => _EjemploCheckboxState();
}

class _EjemploCheckboxState extends State<EjemploCheckbox> 
{
  List<bool> inputs = new List<bool>();

  @override
  void initState()
  {
    super.initState();
    for(int i=0;i<20;i++){
        inputs.add(true);
    }
  }

  void cambioElemento(bool val,int index){
    setState(() {
      inputs[index] = val;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: inputs.length,
      itemBuilder: (BuildContext context, int index){
        return new Card(
          child: new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new CheckboxListTile(
                  value: inputs[index],
                  title: new Text('Elemento $index'),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged:(bool val){cambioElemento(val, index);}
                )
              ],
            ),
          ),
        );

      }
    );
  }
}