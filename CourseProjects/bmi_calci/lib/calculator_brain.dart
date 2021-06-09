import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25)
      return 'OverWeight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }
  String getInterpretations() {
    if (_bmi >= 25)
      return 'Body Weight Higher Than Normal! Exercise More!';
    else if (_bmi > 18.5)
      return 'Normal! Good Job! Keep it up!';
    else
      return 'Weight lower than normal! Eat More!';
  }
}
