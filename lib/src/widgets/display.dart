import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key, required this.value});
  final String value;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              value,
              style: Theme.of(context).textTheme.displayLarge,
            )));
  }
}
