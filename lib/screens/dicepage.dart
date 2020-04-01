import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dice1Value = 1;
  int dice2Value = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changeDiceValues();
                });
              },
              child: Image.asset("images/dice$dice1Value.png"),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState((){
                  changeDiceValues();
                });
              },
              child: Image.asset("images/dice$dice2Value.png"),
            ),
          ),
        ],
      ),
    );
  }

  void changeDiceValues(){
    setState(() {
      dice1Value = Random().nextInt(6) + 1; //0 - 5;
      dice2Value = Random().nextInt(6) + 1;
    });
  }
}
