import 'package:flutter/material.dart';

class ButtonHub extends StatelessWidget {
  const ButtonHub({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(12),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 4,
      children: <Widget>[
        Button(
          value: '%',
          color: Colors.pink.shade400,
        ),
        Button(
          value: 'CE',
          color: Colors.pink.shade400,
        ),
        Button(
          value: 'C',
          color: Colors.pink.shade400,
        ),
        Button(
          value: 'DEL',
          color: Colors.pink.shade400,
        ),
        Button(
          value: '7',
          color: Colors.pink.shade200,
        ),
        Button(
          value: '8',
          color: Colors.pink.shade200,
        ),
        Button(
          value: '9',
          color: Colors.pink.shade200,
        ),
        Button(
          value: '+',
          color: Colors.pink.shade400,
        ),
        Button(
          value: '4',
          color: Colors.pink.shade200,
        ),
        Button(
          value: '5',
          color: Colors.pink.shade200,
        ),
        Button(
          value: '6',
          color: Colors.pink.shade200,
        ),
        Button(
          value: '-',
          color: Colors.pink.shade400,
        ),
        Button(
          value: '1',
          color: Colors.pink.shade200,
        ),
        Button(
          value: '2',
          color: Colors.pink.shade200,
        ),
        Button(
          value: '3',
          color: Colors.pink.shade200,
        ),
        Button(
          value: 'X',
          color: Colors.pink.shade400,
        ),
        const Button(
          value: '=',
          color: Colors.pinkAccent,
        ),
        Button(
          value: '0',
          color: Colors.pink.shade200,
        ),
        const Button(
          value: ',',
          color: Colors.black45,
        ),
        Button(
          value: '/',
          color: Colors.pink.shade400,
        ),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  const Button({super.key, required this.value, this.color});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primary;
    return Container(
      padding: const EdgeInsets.all(8),
      color: color,
      child: Center(
        child: Text(
          value,
          style: const TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
