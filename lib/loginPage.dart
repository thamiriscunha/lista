import 'package:flutter/material.dart';
import 'package:teste1/items.dart';
import 'package:teste1/listpage.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  gotoLista(BuildContext context, List<Item> lista) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return ListaAdd(itens : lista);
    }
    ));   
  }

  Widget build(BuildContext context) {
    List<Item> lista = new List<Item>();
    Item obj = new Item("Produto 1", 11);
    lista.add(obj);
    lista.add(Item("Produto 2", 12));
    lista.add(Item("Produto 3", 13));
    String email;
    String pass;
    return Scaffold(    
         // backgroundColor: Color(0xFF0D47A1),
         appBar: AppBar(
           title:Text("LOGIN",
           style: TextStyle(
             color: Colors.pink[200]
           ),            
           ),
         ),
          body: Container(
            padding: EdgeInsets.only(top:10,left:10,right:10),
            decoration: BoxDecoration(
                    color: Colors.blue[400],
                    image: DecorationImage(
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),
                      image: AssetImage('assets/imagens/background_5.jpg'),
                      fit: BoxFit.cover
                    ),
                    ),
            child: ListView(
              children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top:70),
                    child: new Column(
                      children: <Widget>[                        
                        Image.asset("assets/imagens/online-shopping.png",
                        width:100.0,
                        height: 100.0,)
                      ],
                    ),
                  ),
                  
                  Container(
                    padding: EdgeInsets.only(top:110,left:15,right:15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          autofocus: true,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D47A1),
                            fontSize: 20.0,
                            decoration: TextDecoration.none
                          ),
                          cursorColor: Colors.pink[200],
                          decoration: InputDecoration(
                          hintText: 'input e-mail',
                          hintStyle: TextStyle(color: Colors.grey,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          fontSize: 15
                          ),
                          labelText: "E-mail", 
                          labelStyle: TextStyle(color: Colors.pink[200],fontSize: 23.0),              
                          ),
                          onChanged: (text){
                            email = text;     
                            print('${email}');                       
                          }
                        ),
                        TextFormField(
                          autofocus: true,
                          obscureText: true, 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D47A1),
                            fontSize: 20.0,
                            decoration: TextDecoration.none
                          ),
                    
                          cursorColor: Colors.pink[200],
                          decoration: InputDecoration(
                          hintText: 'input a password',
                          hintStyle: TextStyle(color: Colors.grey,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          fontSize: 15
                          ),
                          labelText: "Password",                          
                          labelStyle: TextStyle(color: Colors.pink[200],fontSize: 23.0), 
                          focusColor: Color(0xFF0D47A1),
                          hoverColor:  Color(0xFF0D47A1)               
                          ),
                          onChanged: (text){
                            pass = text;     
                            print('${pass}');                       
                          }
                        ),
                      ],
                    ),
                  ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: new FlatButton(
                  child: new Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pink[200],
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
                    new Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    color: Colors.pink[200],
                    onPressed: () => {
                      if(pass == " " || email == " "|| pass == null || email == null){  
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                          title:Text("Campos obrigatórios em branco"),
                          content:Text("Campo e-mail ou password em branco"),
                          actions: <Widget>[
                            new FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                }, 
                              child: new Text("Fechar"))                          
                          ],
                          );
                        },
                      )
                      }else{
                          gotoLista(context,lista),
                        }
                    },
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),                  
              ],
            )
          )
    );
  }
}