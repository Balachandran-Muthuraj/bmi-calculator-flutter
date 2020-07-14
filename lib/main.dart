import 'package:flutter/material.dart';
import 'screen/input_page.dart';
import 'screen/resultpage.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme:ThemeData.dark().copyWith(

            primaryColor: Color(0xFF0A0221),scaffoldBackgroundColor: Color(0xFF0A0221)

      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>InputPage(),
        '/result':(context)=>ResultPage()
      },
    );
  }
}

