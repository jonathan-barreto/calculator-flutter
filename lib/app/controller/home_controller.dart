import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  String first = '0';
  String operator = '';
  String second = '';
  String valueVisor = '0';

  void clearVariables() {
    operator = '';
    second = '';
  }

  String clearAll() {
    first = '0';
    operator = '';
    second = '';
    return '0';
  }

  dynamic returnOperation(operator) {
    switch (operator) {
      case '+':
        return double.parse(first) + double.parse(second);
      case '-':
        return double.parse(first) - double.parse(second);
      case '*':
        return double.parse(first) * double.parse(second);
      case '/':
        return double.parse(first) / double.parse(second);
    }
  }

  void calculator(String value) {
    String getResult() {
      double result = returnOperation(operator);
      first = result.toStringAsFixed(0);
      clearVariables();
      return result.toStringAsFixed(0);
    }

    dynamic returnValueVisor(value) {
      switch (value) {
        case '+':
          operator = value;
          break;
        case '-':
          operator = value;
          break;
        case '*':
          operator = value;
          break;
        case '/':
          operator = value;
          break;
        case 'C':
          return clearAll();
        case '=':
          return getResult();
      }

      if (operator == '') {
        first == '0' ? first = value : first += value;
        //print(first);
      }

      if (operator.isNotEmpty &&
          (value != '+' && value != '-' && value != '*' && value != '/')) {
        second == '' ? second = value : second += value;
      }

      return '$first$operator$second';
    }

    valueVisor = returnValueVisor(value);

    notifyListeners();
  }
}
