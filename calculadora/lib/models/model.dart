import 'package:math_expressions/math_expressions.dart';

class AppLogic {

  String result = "0";
  String operators = "+-*/";

  void addDigit(String number){
    if(result == "0"){
      result = number;
    }
    else{
      result  = result + number;
    }
  }
  void addOperator(String operator){

    String lastDigit = result.substring(result.length - 1);

    if(!operators.contains(lastDigit)){
      result  = result + operator;
    }
  }
  void clear(){
    result = "0";
  }
  void clearEntry(){
    String lastChar = "";
    for(int i = result.length-1; i >= 0; i--){
      lastChar = result[i];
      if(operators.contains(lastChar)){
      result = result.substring(0, i + 1);
      return;
      }
    }
    result = "0";
  }
  void deleteLast(){
    if(result.length <= 1){
      result = "0";
    }else{
          result = result.substring(0, result.length - 1);
    }
  }
  void calculate(){
    try{
      ExpressionParser parser = GrammarParser();
      Expression exp = parser.parse(result.replaceAll(",", "."));
      var evaluator = RealEvaluator(ContextModel());
      num eval =  evaluator.evaluate(exp);

      if(eval.isInfinite){
        result = "";
        return;
      }if(eval == eval.toInt()){

      }

    }catch{

    }
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