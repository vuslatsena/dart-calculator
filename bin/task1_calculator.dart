import 'dart:io';

void main() {
  try {
    while (true) {
      calculate();
      print('Exit? yes / no');
      var q = stdin.readLineSync();
      if (q == 'yes') {
        break;
      }
    }
  } catch (e) {
    print(e);
  }
}

void calculate() {
  print('First Number:');
  var number1 = double.parse(stdin.readLineSync());
  print('Second Number: ');
  var number2 = double.parse(stdin.readLineSync());

  print('Choose an operator');
  print('Add:+\nSubtract:-\nDivide:/\nMultiply:* ');
  var n = stdin.readLineSync();

  switch (n) {
    case '+':
      add(number1, number2);
      break;
    case '-':
      subtract(number1, number2);
      break;
    case '/':
      divide(number1, number2);
      break;
    case '*':
      multiply(number1, number2);
      break;
    default:
      print('Invalid operator');
      break;
  }
}

void add(double number1, double number2) {
  print(number1 + number2);
}

void subtract(double number1, double number2) {
  print(number1 - number2);
}

void divide(double number1, double number2) {
  print(number1 / number2);
}

void multiply(double number1, double number2) {
  print(number1 * number2);
}
