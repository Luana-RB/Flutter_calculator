import 'package:calculator/src/widgets/button_hub.dart';
import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalcController extends ChangeNotifier {
  var display = '0';
  var answer = '';
  bool newEquation = false;

  void onButtonClick(ButtonClick click) {
    if (newEquation == true || display == '0') {
      display = '';
    }

    if (click is CommonButtonClick) {
      display += click.value;
      newEquation = false;
    } else if (click is ClearButtonClick) {
      display = '0';
      newEquation = false;
    } else if (click is PorcentageButtonClick) {
      double dodisplay = double.parse(display);
      display = (dodisplay / 100).toString();
      newEquation = false;
    } else if (click is AnswerButtonClick) {
      display += answer;
      newEquation = false;
    } else if (click is DeleteButtonClick) {
      if (display.length == 1) {
        display = '0';
        newEquation = false;
      } else {
        display = display.substring(0, display.length - 1);
        newEquation = false;
      }
    } else if (click is EqualButtonClick) {
      var v = display.interpret();
      if (v % 1 == 0) {
        v = v.toInt();
      }
      display = '$v';
      answer = '$v';
      newEquation = true;
    }

    notifyListeners();
  }
}
