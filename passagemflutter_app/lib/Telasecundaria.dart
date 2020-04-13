import 'package:flutter/material.dart';

class Telasecundaria extends StatelessWidget {
  final String texto1;
  final String texto2;
  // recebendo dados da Tela primária como parâmetro

  Telasecundaria({Key key, @required this.texto1, this.texto2}) : super(key: key);
  //Construtor Telasecundaria

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela Secundária')),
      body: Center(
        child: Column(
          children: <Widget>[
           Padding(padding: EdgeInsets.only(top: 30.0, left: 30.0)
           ),
            Text(
          texto1,
          //Passando parânmetro do texto 1
          style: TextStyle(fontSize: 15),
        ),
         Padding(padding: EdgeInsets.only(top: 30.0, left: 30.0)
        ),
        Text(
          texto2,
          //Passando parânmetro do texto 2
          style: TextStyle(fontSize: 15),
        ),
      ],
      ),  
      ),
    );
  }
}