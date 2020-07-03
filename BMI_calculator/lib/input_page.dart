import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const Color boxColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
      body: Column(children: [
        Expanded(
          child: Row(
            children: <Widget>[
              Boxes(
                colour: boxColor,
              ),
              Boxes(
                colour: boxColor,
              ),
            ],
          ),
        ),
        Boxes(
          colour: boxColor,
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Boxes(
                colour: boxColor,
              ),
              Boxes(
                colour: boxColor,
              ),
            ],
          ),
        ),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: bottomContainerHeight,
        ),
      ]),
    );
  }
}

class Boxes extends StatelessWidget {
  final Color colour;
  Boxes({@required this.colour});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
