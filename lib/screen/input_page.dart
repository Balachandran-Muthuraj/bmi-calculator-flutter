import 'package:bmi_calculator/calculatebmi.dart';
import 'package:bmi_calculator/screen/results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/components/roundiconbutton.dart';
import 'package:bmi_calculator/components/bottombutton.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}


class _InputPageState extends State<InputPage> {
  Color malecardcolor = kinactivecardcolor;
  Color femalecardcolor = kinactivecardcolor;

  int height = 180;
  int Weight=60;
  int Age=20;
  Gender Selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),

      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablewidget(
                      colours: Selectedgender == Gender.male
                          ? kactivecardcolor
                          : kinactivecardcolor,
                      CardChild: IconContent('MALE', FontAwesomeIcons.mars),
                      onPress: () {
                        setState(() {
                          Selectedgender = Gender.male;
                        });
                      }),
                ),
                Expanded(
                  child: Reusablewidget(
                    colours: Selectedgender == Gender.female
                        ? kactivecardcolor
                        : kinactivecardcolor,
                    CardChild: IconContent('FEMALE', FontAwesomeIcons.venus),
                    onPress: () {
                      setState(() {
                        Selectedgender = Gender.female;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablewidget(
                    colours: kactivecardcolor,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HEIGHT',
                          style: ktextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: ktextstyleW900,
                            ),
                            Text(
                              'cm',
                              style: ktextstyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            thumbColor: Color(0xFFEB1555),
                            overlayColor: Color(0x29EB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30),
                          ),
                          child: Slider(
                            activeColor: Color(0xFFEB1555),
                            inactiveColor: Color(0xFF8D8E98),
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.round();
                              });
                              // print(oldvalue);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablewidget(
                    colours: kactivecardcolor,
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',style: ktextstyle,
                        ),Text(
                          Weight.toString(),style: ktextstyleW900,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          RoundIconButton(IconData:FontAwesomeIcons.minus,onpress:() {
                          setState(() {
                          Weight--;
                          });
                          },),SizedBox(
                            width: 10,
                          ), RoundIconButton(IconData:FontAwesomeIcons.plus,onpress:() {
                          setState(() {
                          Weight++;
                          });
                          },)
                        ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusablewidget(colours: kactivecardcolor,CardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text('Age',style: ktextstyle,),Text(
                        Age.toString(),style: ktextstyleW900,
                      ),Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          RoundIconButton(
                            IconData: FontAwesomeIcons.minus,onpress: ()
                            {
                              setState(() {
                                Age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),RoundIconButton(
                            IconData: FontAwesomeIcons.plus,onpress: (){
                              setState(() {
                                Age++;
                              });
                          },
                          )
                        ],
                      )
                    ],
                  ),),
                )
              ],
            ),
          ),
          Bottombutton(buttoncontent: 'CALCULATE',onTAP: (){

            Calculatebmi calc=  Calculatebmi(height,Weight);
            results result=results(bmi: calc.ManipulateBMIresult(),interpretation: calc.getInterpretationresult(),resultstatus: calc.getresult());
            Navigator.pushNamed(context, '/result',arguments: result);
          },)
        ],
      ),
/*      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.purple),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),*/
    );
  }
}





