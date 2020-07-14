import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';

class IconContent extends StatelessWidget {
  final String sex;
  final IconData icon;

  IconContent(this.sex, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 80,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            sex,
            style: ktextstyle,
          )
        ],
      ),
    );
  }
}
