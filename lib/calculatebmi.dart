import 'package:flutter/cupertino.dart';
import 'dart:math';

class Calculatebmi {
  final int height;
  final int weight;
  double bmi;

  Calculatebmi(@required this.height, this.weight);

  String ManipulateBMIresult() {
    bmi = weight / pow(height/100, 2);
    return bmi.toStringAsFixed(1).toString();
  }

  String getresult() {
    if (bmi >= 25) {
      return 'Over weight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else { return 'Under Weight';}
  }
  String getInterpretationresult() {
    if (bmi >= 25) {
      return 'Try to exercise every day, Keep on thinking your diet';
    } else if (bmi > 18.5) {
      return 'Well done, Keep Continues your exercise and diet';
    } else { return 'Eat more and gain more, you need to concentrate on food habits';}
  }
}
