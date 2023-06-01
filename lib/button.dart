import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.valueText,
    this.color = Colors.white,
    required this.onPressed,
  });

  final String valueText;
  final Function(String) onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          onPressed(valueText);
        },
        child: Container(
          color: Colors.black,
          child: Center(
            child: Text(
              valueText,
              style: TextStyle(
                color: color,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
