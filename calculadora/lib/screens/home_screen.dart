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
                    child: Text(logic.result, style: TextStyle(color: Colors.black, fontSize: 50),)
                  )
                ),
                Row(
                  children: [
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("%"), 
                          onPressed: (){
                            setState(() {
                              logic.percent();
                            });
                          },
                        ),
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("CE"),
                          onPressed: (){
                            setState(() {
                              logic.clearEntry();
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("C"),
                          onPressed: (){
                            setState(() {
                              logic.clear();
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Icon(Icons.backspace_outlined), //Icono de borrado con flecha
                          onPressed: (){
                            setState(() {
                              logic.deleteLast();
                            });
                          }
                        )
                      )
                    ),
                  ]
                ),
                Row(
                  children: [
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("1/x"),
                          onPressed: (){
                            setState(() {
                              logic.inverse();
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("x²"),
                          onPressed: (){
                            setState(() {
                              logic.square();
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("√x"),
                          onPressed: (){
                            setState(() {
                              logic.squareRoot();
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Icon(CupertinoIcons.divide), //Para el signo de division, con cupertino porque material no lo tiene
                          onPressed: (){
                            setState(() {
                              logic.addOperator("/");
                            });
                          }
                        )
                      )
                    ),
                  ]
                ),
                Row(
                  children: [
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("1"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("1");
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("2"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("2");
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("3"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("3");
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Icon(Icons.add),
                          onPressed: (){
                            setState(() {
                              logic.addOperator("+");
                            });
                          }
                        )
                      )
                    )
                  ]
                ),
                Row (
                  children: [
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("4"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("4");
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("5"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("5");
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("6"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("6");
                            });
                          }
                        )
                      )
                    ),
                     Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Icon(Icons.remove),
                          onPressed: (){
                            setState(() {
                              logic.addOperator("-");
                            });
                          }
                        )
                      )
                    )
                  ]
                ),
                Row (
                  children: [
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("7"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("7");
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("8"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("8");
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("9"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("9");
                            });
                          }
                        )
                      )
                    ), 
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Icon(Icons.close), //Para multiplicar
                          onPressed: (){
                            setState(() {
                              logic.addOperator("*");
                            });
                          }
                        )
                      )
                    ),
                  ]
                ),
                Row (
                  children: [
                   Expanded( 
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: ElevatedButton(
                        child: Text("+/-"),
                        onPressed: (){
                          setState(() {
                            logic.toggleSign();
                          });
                        }
                      )
                    )
                   ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text("0"),
                          onPressed: (){
                            setState(() {
                              logic.addDigit("0");
                            });
                          }
                        )
                      )
                    ),
                    Expanded( 
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: ElevatedButton(
                          child: Text(","), 
                          onPressed: (){
                            setState(() {
                              logic.addDecimal();
                            });
                          }
                        )
                      )
                    ),
                   Expanded( 
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: ElevatedButton(
                          child: Icon(CupertinoIcons.equal), //Para el signo de =, con cupertino porque material no lo tiene
                          onPressed: (){
                            setState(() {
                              logic.calculate();
                            });
                          } 
                        )
                      )
                    )
                  ]
                )
              ],
          ),
      );
    }
}