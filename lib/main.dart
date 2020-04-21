import 'dart:math';

import 'package:flutter/material.dart';

String d1 = 'images/dice1.png';
String d2 = 'images/dice2.png';
String d3 = 'images/dice3.png';
String d4 = 'images/dice4.png';
String d5 = 'images/dice5.png';
String d6 = 'images/dice6.png';
List<String> dices = [d1, d2, d3, d4, d5, d6];
int first = 0;
int second = 0;
Random random = new Random();
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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
  void reset() => setState(() {
        first = random.nextInt(6);
        second = random.nextInt(6);
      });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: reset,
              child: Image.asset(
                dices[first],
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: reset,
              child: Image.asset(
                dices[second],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
