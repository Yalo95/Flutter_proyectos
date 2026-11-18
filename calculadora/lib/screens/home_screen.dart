import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Calculadora', style: TextStyle(color: Colors.white, fontSize: 32)),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("1"),
                      onPressed: null
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("2"),
                      onPressed: null
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("3"),
                      onPressed: null
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.add),
                      onPressed: null
                    ),
                  ]
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("4"),
                      onPressed: null
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("5"),
                      onPressed: null
                    ),
                    FloatingActionButton(                        
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("6"),
                      onPressed: null
                    ),
                     FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.remove),
                      onPressed: null
                    ),
                  ]
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("7"),
                      onPressed: null
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("8"),
                      onPressed: null
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("9"),
                      onPressed: null
                    ), 
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.close), //Para multiplicar
                      onPressed: null
                    ),
                  ]
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text(","),
                      onPressed: null
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Text("0"),
                      onPressed: null
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(CupertinoIcons.divide), //Para el signo de %, con cupertino porque material no lo tiene
                      onPressed: null
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(CupertinoIcons.equal), //Para el signo de =, con cupertino porque material no lo tiene
                      onPressed: null 
                    )
                  ]
                )
              ],
          ),
        ),
      );
    }
}