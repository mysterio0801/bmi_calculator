import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    }
    else if(_bmi > 18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String feedback(){
    if(_bmi >= 25){
      return 'You are slightly on the heavier side. You must start exercising and dieting';
    }
    else if(_bmi > 18.5){
      return 'You are in perfect condition. Keep it up!';
    }
    else{
      return 'You are slightly on the lighter side. You should eat more';
    }
  }

}
