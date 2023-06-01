import 'package:app_teste/app/controller/home_controller.dart';
import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final HomeController controller;

  const DisplayWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.deepOrange,
        child: Center(
          child: Text(
            controller.valueVisor,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
