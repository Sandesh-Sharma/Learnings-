import 'package:flutter/material.dart';

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
  var imageone = 1;
  var imagetwo = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$imageone.png'),
            onPressed: () {
              imageone++;
            },
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice1.png'),
            onPressed: () {
              setState(() {
                imageone++;
                print(imageone);
              });
            },
          )),
        ],
      ),
    );
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
