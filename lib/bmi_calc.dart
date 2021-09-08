import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. \n Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. \n Good job!';
    } else {
      return 'You have a lower than normal body weight.';
    }
  }

  String getBmiRange() {
    if (_bmi >= 25) {
      return 'under 18.5 kg/m2';
    } else if (_bmi > 18.5) {
      return '18.5 to 24.9 kg/m2';
    } else {
      return '25 to 29.9 kg/m2';
    }
  }

  String getBmiBodyWeight() {
    if (_bmi >= 25) {
      return 'The Overweight BMI Range:';
    } else if (_bmi > 18.5) {
      return 'The Normal BMI Range:';
    } else {
      return 'The Underweight BMI Range:';
    }
  }
}
