import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';
class Bottombutton extends StatelessWidget {
  final String buttoncontent;
  final Function onTAP;

  Bottombutton({@required this.buttoncontent,this.onTAP});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTAP,
      child: Container(

        child: Center(child: Text(buttoncontent,style: ktextstyle1,)),
        margin: EdgeInsets.all((10.0)),
        padding: EdgeInsets.only(bottom: 20),
        height: kbottomcontainerheight,
        width: double.infinity,
        color: kcontainercolor,
      ),
    );
  }
}