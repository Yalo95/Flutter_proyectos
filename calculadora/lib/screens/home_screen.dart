import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/theme/theme.dart';

class HomeScreen extends StatefulWidget{
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String number = "0";

  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Calculadora', style: TextStyle(color: Colors.white, fontSize: 32)),
        ),
        body:
            Column(
              children: [
                Expanded( //Display. El expanded es para que ocupe toda la pantalla posible, sin que sobre nada.
                  child: Container(
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.all(20),
                    color: Colors.white,
                    child: Text(number, style: TextStyle(color: Colors.black, fontSize: 50),)
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("%"), 
                      onPressed: null,
                    ),
                    ElevatedButton(
                      child: Text("CE"),
                      onPressed: null
                    ),
                    ElevatedButton(
                      child: Text("C"),
                      onPressed: null
                    ),
                    ElevatedButton(
                      child: Icon(Icons.backspace_outlined),
                      onPressed: null
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("1/x"),
                      onPressed: null
                    ),
                    ElevatedButton(
                      child: Text("x²"),
                      onPressed: null
                    ),
                    ElevatedButton(
                      child: Text("√x"),
                      onPressed: null
                    ),
                    ElevatedButton(
                      child: Icon(CupertinoIcons.divide), //Para el signo de division, con cupertino porque material no lo tiene
                      onPressed: addDigit()
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("1"),
                      onPressed: addDigit()
                    ),
                    ElevatedButton(
                      child: Text("2"),
                      onPressed: addDigit()
                    ),
                    ElevatedButton(
                      child: Text("3"),
                      onPressed: addDigit()
                    ),
                    ElevatedButton(
                      child: Icon(Icons.add),
                      onPressed: addDigit()
                    ),
                  ]
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("4"),
                      onPressed: addDigit()
                    ),
                    ElevatedButton(
                      child: Text("5"),
                      onPressed: addDigit()
                    ),
                    ElevatedButton(
                      child: Text("6"),
                      onPressed: addDigit()
                    ),
                     ElevatedButton(
                      child: Icon(Icons.remove),
                      onPressed: null
                    ),
                  ]
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("7"),
                      onPressed: addDigit()
                    ),
                    ElevatedButton(
                      child: Text("8"),
                      onPressed: addDigit()
                    ),
                    ElevatedButton(
                      child: Text("9"),
                      onPressed: addDigit()
                    ), 
                    ElevatedButton(
                      child: Icon(Icons.close), //Para multiplicar
                      onPressed: null
                    ),
                  ]
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   ElevatedButton(
                      child: Text("+/-"),
                      onPressed: null
                    ),
                    ElevatedButton(
                      child: Text("0"),
                      onPressed: addDigit(),
                    ),
                    ElevatedButton(
                      child: Text(","), 
                      onPressed: null
                    ),
                   ElevatedButton(
                      child: Icon(CupertinoIcons.equal), //Para el signo de =, con cupertino porque material no lo tiene
                      onPressed: null 
                    )
                  ]
                )
              ],
          ),
      );
    }
}