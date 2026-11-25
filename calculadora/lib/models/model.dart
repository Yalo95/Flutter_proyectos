import 'package:math_expressions/math_expressions.dart';

class AppLogic {

  String resultado = "0";
  String operadores = "+-*/";

  void addDigit(String number){
    if(resultado == "0"){
      resultado = number;
    }
    else{
      resultado  = resultado + number;
    }
  }
  void addOperator(String operator){

    String ultimo = resultado.substring(resultado.length - 1); //

    if(!operadores.contains(ultimo)){
      resultado  = resultado + operator;
    }
  }
  void clear(){
    
  }
  void clearEntry(){
    
  }
  void deleteLast(){
    
  }
  void calculate(){
    
  }
  void addDecimal(){
    
  }
  void toggleSign(){
    
  }
  void square(){
    
  }
  void squareRoot(){
    
  }
  void inverse(){
  
  }
  void percent(){
    
  }
}