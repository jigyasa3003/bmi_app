import 'dart:math';

class Calc {

  Calc({this.height,this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBMI(){

    _bmi=weight/ pow(height/100, 2);
return _bmi.toStringAsFixed(2);

  }
  String getResult() {
    if (_bmi >= 25) {
      return "OVER-WEIGHT";
    }
    else if (_bmi > 18.5) {
      return "NORMAL";
    }
    else {
      return "UNDERWEIGHT";
    }
  }
}