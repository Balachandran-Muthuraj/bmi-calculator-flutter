import 'package:flutter/material.dart';

class Reusablewidget extends StatelessWidget {
  final Color colours;
  final Widget CardChild;
  final Function onPress;
  Reusablewidget({@required this.colours, this.CardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress
      ,
      child: Container(
        child: CardChild,
        margin: EdgeInsets.all((20.0)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: colours,
        ),
      ),
    );
  }
}