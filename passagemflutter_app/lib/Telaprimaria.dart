import 'package:flutter/material.dart';
import 'package:passagemflutterapp/Telasecundaria.dart';

//Nessa página eu capturo os dados

class Telaprimaria extends StatefulWidget {
  @override
  _TelaprimariaState createState() => _TelaprimariaState();
}

class _TelaprimariaState extends State<Telaprimaria> {
   TextEditingController _primeirotextoController = TextEditingController();
   TextEditingController _segundotextoController = TextEditingController();
   // Controlador para pegar os dados digitados pelo usuário
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela Primária')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            
            Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Primeiro texto'
              ),
              controller: _primeirotextoController,
              //Passando o controlador do primeiro texto
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
          //Local de captura do primeiro texto
          //Local do usuário digitar os dados

           
           Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
              labelText: 'Segundo texto'
              ),
              controller: _segundotextoController,
              //Passando o controlador do segundo texto
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),  
          ),
          //Local de captura do segundo texto
          //Local do usuário digitar os dados

          RaisedButton(
            child: Text(
              'Ir para tela secundária',
              style: TextStyle(fontSize: 15),
            ),
            onPressed: () {
              _enviardadosparatelasecundaria(context);
            },
          )
           //Botão para enviar dados para tela secundária
        ],
      ),
    );
  }

  void _enviardadosparatelasecundaria(BuildContext context) {
    String primeirotextoparaenviar = _primeirotextoController.text;
    String segundotextoparaenviar  = _segundotextoController.text;
    // Transforma os dados em string
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Telasecundaria( 
            texto1: primeirotextoparaenviar, 
            texto2: segundotextoparaenviar,
          ),   
        ));
         // Método para capturar os dados
        // obtendo o texto do local da String e iniciando a tela secundária
  }
  
}


  