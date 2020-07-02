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
      body: Center(
        child: Column(children: [
          Row(
            children: <Widget>[
              boxes(),
              boxes(),
            ],
          ),
          boxes(),
          Row(
            children: <Widget>[
              boxes(),
              boxes(),
            ],
          ),
        ]),
      ),
    );
  }

  Widget boxes() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
