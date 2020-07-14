import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/calculatebmi.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/screen/results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottombutton.dart';

class ResultPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final results args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'Your Result',
                style: ktextstyleW900,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Reusablewidget(
                colours: kactivecardcolor,
                CardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      args.resultstatus.toUpperCase(),
                      style: kresultTextstyle,
                    ),
                    Text(
                      args.bmi,
                      style: kBMITextstyle,
                    ),
                    Text(args.interpretation,
                        style: kBMIbodyTextstyle, textAlign: TextAlign.center),

                  ],
                ),

              )),
          Bottombutton(buttoncontent: 'RE-CALCULATE',onTAP: (){
            Navigator.pop(context);
          },)

        ],
      ),
    );
  }
}
