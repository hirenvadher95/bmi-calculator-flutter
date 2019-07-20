import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double bmi;

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Over Weight';
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "Under Weight";
    }
  }

  String getInterpretation() {
    if (bmi >= 25) {
      return 'You have higher than normal body weight.Try to exercise more.';
    } else if (bmi > 18.5) {
      return "You have normal body weight.Good job!";
    } else {
      return "Under Weight";
    }
  }
}
