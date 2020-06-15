import 'package:flutter/material.dart';
import 'package:teste1/addItem.dart';
import 'package:teste1/items.dart';

class ListaAdd extends StatefulWidget {
  final List<Item> itens;
  
  ListaAdd({Key key, @required this.itens}) : super(key: key);
  @override
  _ListaAddState createState() => _ListaAddState();
}

class _ListaAddState extends State<ListaAdd> {
  void addQtd(Item item){
    setState(() {
      item.quantidade +=1;
    });
  }

  void remQtd(Item item){
    setState(() {
      item.quantidade -=1;
    });
  }

  _cadastrarItem(BuildContext context, List<Item> lista) async{
     final result = await Navigator.push(context,
      MaterialPageRoute(builder: (context) => AddItemForm(itemobjeto : lista)
      ));
  }

  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista",
        style: TextStyle(
             color: Colors.pink[200]
           ),
        )
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
        child: ListView.builder(
          itemCount: widget.itens.length,
          itemBuilder: (context,index){
            return Column(
              children: <Widget>[
                new Card(          
                color:Colors.lightBlue[200],
                child: ListTile(
                  title: Text(
                    '${widget.itens[index].nome}',
                     style: TextStyle(
                       color:  Color(0xFF0D47A1),
                       fontSize: 18,
                       fontWeight: FontWeight.bold
                  ),
                  
                  ),
                  subtitle: Text('Quantidade: ${widget.itens[index].quantidade}'),
                  leading: IconButton(
                    icon: Icon(
                      Icons.add_box,
                      color: Colors.green[800],
                    ),
                    onPressed: (){                
                      addQtd(widget.itens[index]);
                      print('${widget.itens[index].quantidade}');
                      },
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.remove,
                      color: Colors.red,
                    ),
                    onPressed: (){
                      if(widget.itens[index].quantidade == 0){
                        widget.itens[index].quantidade = 0;
                      }else{
                        remQtd(widget.itens[index]);
                      }                
                      print('${widget.itens[index].quantidade}');
                      },
                  )
                ),
                ),
              ],            
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //onPressed: gotoAddForm,
        backgroundColor: Colors.pink[200],
        onPressed: (){          
          _cadastrarItem(context,widget.itens);
        },
        tooltip: 'Mensagem',
        child: Icon(Icons.add),
        )      
    );
  }
}
