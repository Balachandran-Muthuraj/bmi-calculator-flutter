import 'package:flutter/material.dart';

class Reusablewidget extends StatelessWidget {
  final Color colours;
  final Widget CardChild;
  Reusablewidget(@required this.colours, this.CardChild);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardChild,
      margin: EdgeInsets.all((20.0)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colours,
      ),
    );
  }
}