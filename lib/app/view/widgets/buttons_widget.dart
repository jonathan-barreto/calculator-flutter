import 'package:app_teste/app/controller/home_controller.dart';
import 'package:app_teste/row.dart';
import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  final HomeController controller;

  const ButtonsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            MyRow(
              firstNumber: 'D',
              secondNumber: '%',
              thirdNumber: 'C',
              operator: '/',
              onPressed: controller.calculator,
            ),
            MyRow(
              firstNumber: '7',
              secondNumber: '8',
              thirdNumber: '9',
              operator: '*',
              onPressed: controller.calculator,
            ),
            MyRow(
              firstNumber: '4',
              secondNumber: '5',
              thirdNumber: '6',
              operator: '-',
              onPressed: controller.calculator,
            ),
            MyRow(
              firstNumber: '1',
              secondNumber: '2',
              thirdNumber: '3',
              operator: '+',
              onPressed: controller.calculator,
            ),
            MyRow(
              firstNumber: '+/-',
              secondNumber: '0',
              thirdNumber: '.',
              operator: '=',
              onPressed: controller.calculator,
            ),
          ],
        ),
      ),
    );
  }
}
