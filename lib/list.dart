import 'package:teste1/items.dart';

class ListItem {
  String nome_lista;
  List<Item> lista_item = new List<Item>();

  ListItem(nome_lista,lista_item){
    this.nome_lista = nome_lista;
    this.lista_item = lista_item;
  }
  void adicionarItem(item){
  lista_item.add(item);
  }

  String getNome(){
    return nome_lista;
  }
}

