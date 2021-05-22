import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int numl = 1;
  int numr = 2;
  void ChangeDice() {
    setState(() {
      numl = Random().nextInt(6) + 1;
      numr = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                ChangeDice();
              },
              child: Image.asset('images/dice$numl.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                ChangeDice();
              },
              child: Image.asset('images/dice$numr.png'),
            ),
          ),
        ],
      ),
    );
  }
}
