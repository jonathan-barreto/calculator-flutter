import 'package:app_teste/app/controller/home_controller.dart';
import 'package:app_teste/app/view/widgets/display_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/buttons_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          DisplayWidget(
            controller: controller,
          ),
          ButtonsWidget(
            controller: controller,
          ),
        ],
      )),
    );
  }
}
