import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick {
  CommonButtonClick(super.value);
}

class EqualButtonClick extends ButtonClick {
  EqualButtonClick(super.value);
}

class ClearButtonClick extends ButtonClick {
  ClearButtonClick(super.value);
}

class AnswerButtonClick extends ButtonClick {
  AnswerButtonClick(super.value);
}

class DeleteButtonClick extends ButtonClick {
  DeleteButtonClick(super.value);
}

class PorcentageButtonClick extends ButtonClick {
  PorcentageButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {
  final void Function(ButtonClick click) onButtonClick;
  const ButtonHub({super.key, required this.onButtonClick});

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
            onTap: (value) => onButtonClick(PorcentageButtonClick(value))),
        Button(
            value: 'C',
            color: Colors.pink.shade400,
            onTap: (value) => onButtonClick(ClearButtonClick(value))),
        Button(
            value: 'ANS',
            color: Colors.pink.shade400,
            onTap: (value) => onButtonClick(AnswerButtonClick(value))),
        Button(
            value: 'DEL',
            color: Colors.pink.shade400,
            onTap: (value) => onButtonClick(DeleteButtonClick(value))),
        Button(
            value: '7',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '8',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '9',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '+',
            color: Colors.pink.shade400,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '4',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '5',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '6',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '-',
            color: Colors.pink.shade400,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '1',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '2',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '3',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '*',
            color: Colors.pink.shade400,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '=',
            color: Colors.pinkAccent,
            onTap: (value) => onButtonClick(EqualButtonClick(value))),
        Button(
            value: '0',
            color: Colors.pink.shade200,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '.',
            color: Colors.black45,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
        Button(
            value: '/',
            color: Colors.pink.shade400,
            onTap: (value) => onButtonClick(CommonButtonClick(value))),
      ],
    );
  }
}

class Button extends StatelessWidget {
  final String value;
  final Color? color;
  final void Function(String value)? onTap;
  const Button({super.key, required this.value, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? Theme.of(context).colorScheme.primary;
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap == null ? null : () => onTap!(value),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Text(
              value,
              style: const TextStyle(fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }
}
