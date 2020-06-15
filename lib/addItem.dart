import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teste1/items.dart';

class AddItemForm extends StatelessWidget {
  String item1;
  int qtd;
  Item itemAdd;
  List<Item> itemobjeto ;    

  
  AddItemForm({Key key, @required this.itemobjeto}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {   
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionar Item à lista"),
      ),
      body: Container(
        padding: EdgeInsets.only(top:20,left:15,right:15),
          child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.text,
                          autofocus: true,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D47A1),
                            fontSize: 20.0,
                            decoration: TextDecoration.none
                          ),
                          cursorColor: Colors.pink[200],
                          decoration: InputDecoration(
                          hintText: 'entre com o nome do item',
                          hintStyle: TextStyle(color: Colors.grey,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          fontSize: 15
                          ),
                          labelText: "Item", 
                          labelStyle: TextStyle(color: Colors.pink[200],fontSize: 20.0),              
                          ),
                          onChanged: (text){
                            item1 = text;                            
                            print('$item1');
                          }
                        ),
                        SizedBox(
                          height: 10,
                        ),
              TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D47A1),
                            fontSize: 20.0,
                            decoration: TextDecoration.none
                          ),
                          cursorColor: Colors.pink[200],
                          decoration: InputDecoration(
                          hintText: 'entre com a quantidade do item',
                          hintStyle: TextStyle(color: Colors.grey,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal,
                          fontSize: 15
                          ),
                          labelText: "Quantidade", 
                          labelStyle: TextStyle(color: Colors.pink[200],fontSize: 20.0),              
                          ),
                          onChanged: (text){
                            qtd = int.parse(text);     
                            print('${qtd}');                       
                          }                          
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FlatButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    color: Colors.pink[200],
                    onPressed: () => {
                    itemAdd = new Item(item1, qtd),
                    itemobjeto.add(itemAdd),
                    print('${itemAdd.nome}  ${itemAdd.quantidade}'), 
                     //Navigator.pop(context,'itemobjeto')
                     Navigator.pop(context)
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
                              "ADICIONAR ITEM À LISTA",
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
            ],
          ),
      ),
    );
  }
}