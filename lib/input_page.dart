import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

const bottomcontainerheight = 80.0;
const activecardcolor = Color(0xFF1D1E33);
const inactivecardcolor = Color(0xFF111328);
const containercolor = Color(0xFFEB1555);

class _InputPageState extends State<InputPage> {
  Color malecardcolor = inactivecardcolor;
  Color femalecardcolor = inactivecardcolor;
  void updategender(int gender) {
    if (gender == 1) {
      if (malecardcolor == inactivecardcolor) {
        malecardcolor = activecardcolor;
        femalecardcolor = inactivecardcolor;
      } else {
        malecardcolor = inactivecardcolor;
      }
    } else {
      if (femalecardcolor == inactivecardcolor) {
        femalecardcolor = activecardcolor;
        malecardcolor = inactivecardcolor;
      } else {
        femalecardcolor = inactivecardcolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updategender(1);
                      });
                    },
                    child: Reusablewidget(malecardcolor,
                        IconContent('MALE', FontAwesomeIcons.mars)),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updategender(2);
                      });
                    },
                    child: Reusablewidget(femalecardcolor,
                        IconContent('FEMALE', FontAwesomeIcons.venus)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablewidget(activecardcolor,IconContent('FEMALE', FontAwesomeIcons.venus)),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reusablewidget(activecardcolor, IconContent('FEMALE', FontAwesomeIcons.venus)),
                ),
                Expanded(
                  child: Reusablewidget(activecardcolor,IconContent('FEMALE', FontAwesomeIcons.venus)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all((10.0)),
            height: bottomcontainerheight,
            width: double.infinity,
            color: containercolor,
          )
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
