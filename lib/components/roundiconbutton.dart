import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.IconData,this.onpress});
  final IconData;

  final onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child:Icon(IconData),
      onPressed:onpress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0,height:56.0),
      shape: CircleBorder(

      ),fillColor: Color(0xFF4C4F5E),
    );
  }
}