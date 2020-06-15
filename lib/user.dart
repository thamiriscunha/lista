import 'package:teste1/items.dart';
import 'package:teste1/list.dart';

class User {
  String login, password;
  List<Item> lista_usuario = new List<Item> ();

  User(login,password){
    this.login = login;
    this.password = password;
  }

  void adicionar(item) {
    lista_usuario.add(item);
  }
}