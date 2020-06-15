import 'package:flutter/material.dart';
import 'package:teste1/about.dart';
import 'package:teste1/loginPage.dart';
import 'package:teste1/signPage.dart';

class LoginScreen3 extends StatefulWidget {
  @override
  _LoginScreen3State createState() => new _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  Widget HomePage() {
    return new Container(
      decoration: BoxDecoration(
        color: Colors.blue[400],
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),
          image: AssetImage('assets/imagens/background_5.jpg'),
          fit: BoxFit.cover
        ),
      ),
      child: new Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30),
          //width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomLeft,
            child: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new OutlineButton(
            borderSide: BorderSide(
                        style: BorderStyle.none
            ),
            child: Icon(      
              Icons.info_outline,
              size: 45,
              color: Color(0xFF0D47A1),
              semanticLabel: 'Informações',
            ),  
            onPressed: () => gotoInformation(),      
          ),
                   ], 
        )        
        ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Image.asset(
                "assets/imagens/online-shopping.png",
                width:100.0,
                height: 100.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20.0),
            child: new Row(              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[                
                Text(
                  "Make your",
                  style: TextStyle(
                    color: Colors.pink[200],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none
                  ),
                ),
                Text(
                  " List",
                  style: TextStyle(
                    color: Color(0xFF0D47A1),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none
                  ),
                  )
              ],
            ),
          ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 110.0),
          alignment: Alignment.center,
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new OutlineButton(
                  //color: Colors.blue[800],
                  focusColor: Colors.pink[400],
                  borderSide: BorderSide(color: Colors.pink[200],
                        style: BorderStyle.solid,width: 2
                  ),
                  shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),                        
                        ),
                    color: Colors.red,
                    highlightedBorderColor: Colors.white,
                    onPressed: () => gotoSignup(),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 15.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "SIGN UP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xFF0D47A1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                  ),
                                ),
                          ),
                        ],
                      ),
                    ),                    
                ),
                )
            ],
          ),
        ),   
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          alignment: Alignment.center,
          child: new Row(
            children: <Widget>[
              new Expanded(
                child: new OutlineButton(
                  //color: Colors.blue[800],
                  focusColor: Colors.pink[400],
                  borderSide: BorderSide(color: Colors.pink[200],
                        style: BorderStyle.solid,width: 2
                  ),
                  shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),                        
                        ),
                    color: Colors.red,
                    highlightedBorderColor: Colors.white,
                    onPressed: () => gotoLogin(),
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                        horizontal: 15.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color:  Color(0xFF0D47A1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                  ),
                                ),
                          ),
                        ],
                      ),
                    ),
                ),
              ),
            ]
          ),
        ),
        
        ],
      ),
    );
  }


  gotoInformation(){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return About();
    }    
    ));
  }

  gotoLogin() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return LoginPage();
    }    
    ));
    /*
    _controller.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );*/
  }

  gotoSignup() {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
      return SignPage();
    } 
    ));
  }

 // PageController _controller = new PageController(initialPage: 1, viewportFraction: 1.0);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        child: PageView(
         // controller: _controller,
          physics: new AlwaysScrollableScrollPhysics(),
          children: <Widget>[HomePage()],
          scrollDirection: Axis.horizontal,
        ));
  }
}
