import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/theme/theme.dart';
import 'package:calculadora/models/model.dart';

class HomeScreen extends StatefulWidget{
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String expression = "0";
  AppLogic logic = AppLogic();
  

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
                    child: Text(logic.resultado, style: TextStyle(color: Colors.black, fontSize: 50),)
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("%"), 
                      onPressed: (){
                        setState(() {
                          logic.percent();
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Text("CE"),
                      onPressed: (){
                        setState(() {
                          logic.clearEntry();
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("C"),
                      onPressed: (){
                        setState(() {
                          logic.clear();
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Icon(Icons.backspace_outlined), //Icono de borrado con flecha
                      onPressed: (){
                        setState(() {
                          logic.deleteLast();
                        });
                      }
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("1/x"),
                      onPressed: (){
                        setState(() {
                          logic.inverse();
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("x²"),
                      onPressed: (){
                        setState(() {
                          logic.square();
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("√x"),
                      onPressed: (){
                        setState(() {
                          logic.squareRoot();
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Icon(CupertinoIcons.divide), //Para el signo de division, con cupertino porque material no lo tiene
                      onPressed: (){
                        setState(() {
                          logic.addOperator("/");
                        });
                      }
                    ),
                  ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("1"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("1");
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("2"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("2");
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("3"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("3");
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Icon(Icons.add),
                      onPressed: (){
                        setState(() {
                          logic.addOperator("+");
                        });
                      }
                    ),
                  ]
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("4"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("4");
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("5"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("5");
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("6"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("6");
                        });
                      }
                    ),
                     ElevatedButton(
                      child: Icon(Icons.remove),
                      onPressed: (){
                        setState(() {
                          logic.addOperator("-");
                        });
                      }
                    ),
                  ]
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text("7"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("7");
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("8"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("8");
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("9"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("9");
                        });
                      }
                    ), 
                    ElevatedButton(
                      child: Icon(Icons.close), //Para multiplicar
                      onPressed: (){
                        setState(() {
                          logic.addOperator("*");
                        });
                      }
                    ),
                  ]
                ),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   ElevatedButton(
                      child: Text("+/-"),
                      onPressed: (){
                        setState(() {
                          logic.toggleSign();
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text("0"),
                      onPressed: (){
                        setState(() {
                          logic.addDigit("0");
                        });
                      }
                    ),
                    ElevatedButton(
                      child: Text(","), 
                      onPressed: (){
                        setState(() {
                          logic.addDecimal();
                        });
                      }
                    ),
                   ElevatedButton(
                      child: Icon(CupertinoIcons.equal), //Para el signo de =, con cupertino porque material no lo tiene
                      onPressed: (){
                        setState(() {
                          logic.calculate();
                        });
                      } 
                    )
                  ]
                )
              ],
          ),
      );
    }
}