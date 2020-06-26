import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage2(),
      ),
    ),
  );
}

class DicePage2 extends StatefulWidget {
  @override
  _DicePage2State createState() => _DicePage2State();
}

class _DicePage2State extends State<DicePage2> {
  int leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: () {
              setState(() {
                changeDiceNumber();
              });
            },
          )),
          Expanded(
              child: FlatButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                    setState(() {
                      changeDiceNumber();
                    });
                  })),
        ],
      ),
    );
  }

  void changeDiceNumber() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice1.png'),
            onPressed: () {
              print('Left button got pressed');
            },
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice1.png'),
            onPressed: () {},
          )),
        ],
      ),
    );
  }
}
