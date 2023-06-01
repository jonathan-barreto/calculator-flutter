import 'package:flutter/material.dart';
import 'button.dart';

class MyRow extends StatelessWidget {
  const MyRow({
    super.key,
    required this.firstNumber,
    required this.secondNumber,
    required this.thirdNumber,
    required this.operator,
    required this.onPressed,
  });

  final String firstNumber;
  final String secondNumber;
  final String thirdNumber;
  final String operator;
  final Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          MyButton(
            valueText: firstNumber,
            onPressed: onPressed,
          ),
          MyButton(
            valueText: secondNumber,
            onPressed: onPressed,
          ),
          MyButton(
            valueText: thirdNumber,
            onPressed: onPressed,
          ),
          MyButton(
            valueText: operator,
            onPressed: onPressed,
            color: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}
