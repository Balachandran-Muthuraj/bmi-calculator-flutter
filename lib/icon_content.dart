import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String sex;
  final IconData icon;
  final TextStyle textstyle=TextStyle(fontSize: 20.0);

  IconContent(this.sex,this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            icon,size: 80,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(sex,style: textstyle,)
        ],
      ),
    );
  }
}