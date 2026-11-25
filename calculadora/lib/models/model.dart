import 'package:math_expressions/math_expressions.dart';

class AppLogic {

  String resultado = "0";

  void addDigit(String number){
    if(resultado == "0"){
      resultado = number;
    }
    else{
      resultado  = resultado + number;
    }
  }

}