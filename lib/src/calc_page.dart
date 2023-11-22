import 'package:calculator/src/widgets/button_hub.dart';
import 'package:calculator/src/widgets/display.dart';
import 'package:flutter/material.dart';

class CalcPage extends StatefulWidget {
  const CalcPage({super.key});

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Display(value: '5'),
          ),
          Expanded(
            flex: 3,
            child: ButtonHub(),
          ),
        ],
      ),
    );
  }
}
