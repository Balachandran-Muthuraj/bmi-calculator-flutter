import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[GetExpandedWidgets(), GetExpandedWidgets()],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[GetExpandedWidgets()],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[GetExpandedWidgets(), GetExpandedWidgets()],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.purple),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Expanded GetExpandedWidgets() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all((20.0)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFF1D1E33),
        ),
      ),
    );
  }
}
