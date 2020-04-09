import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.lightBlueAccent,
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
  int lef = 1;
  int rig = 1;

  void change() {
    setState(() {
      rig = Random().nextInt(6) + 1;
      lef = Random().nextInt(6) + 1;
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
                change();
              },
              child: Image.asset('images/dice$lef.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$rig.png'),
            ),
          ),
        ],
      ),
    );
  }
}
