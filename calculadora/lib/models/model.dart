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
    if(result.isEmpty){
            return;
    }
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
          result = eval.toInt().toString();
      }else{
        result = eval.toString().replaceAll(".", ",");
      }
    }catch (e){
      result = "";
    }
  }
  void addDecimal(){
    if(result.isEmpty){
      result = "0,";
      return;
    }
    String lastDigit = result.substring(result.length - 1);
    if(operators.contains(lastDigit)){
      result = result + "0,";
    }
    else{
      result = result + ",";
    }
  }
  void toggleSign(){
    result = "-(" + result + ")";
    calculate();
  }
  void square(){
    result = "(" + result + ")^2";
    calculate();
  }
  void squareRoot(){
    result = "sqrt(" + result + ")";
    calculate();
  }
  void inverse(){
    result = "1/(" + result + ")";
    calculate();
  }
  void percent(){
    result =  "(" + result + ")/100";
    calculate();
  }
}