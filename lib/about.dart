import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],        
        title: Text("Sobre")
      ),
      body: Container(
      decoration: BoxDecoration(
        color: Colors.blue[400],
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),
          image: AssetImage('assets/imagens/background8.jpeg'),
          fit: BoxFit.cover
        ),
      ),
      child: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:10, right: 5.0,top:27,bottom: 30),
            child: new Wrap(              
              children: <Widget>[                    
                  Text(
                  "Sobre: ",
                  style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none
                  ),
                ),
                Text(                  
                  "Aplicativo criado para a disciplina de Dispositivos móveis e tem como objetivo gerenciar a lista de supermercado de uma família/grupo                  ",
                  style: TextStyle(
                    color: Color(0xFF0D47A1),
                    fontSize: 17.0,
                    //fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none
                  ),
                  softWrap:true,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Versão:",
                    style: TextStyle(
                      color: Colors.pink[200],
                      fontSize: 17.0,
                      decoration: TextDecoration.none
                    ),
                  ),
                  Text(
                    "1.0",
                    style: TextStyle(
                      color: Color(0xFF0D47A1),
                      fontSize: 17.0,
                      decoration: TextDecoration.none
                    ),
                  ),
              ],
            ),
          ),
        ],        
      ),
    ),
    );
  }
}