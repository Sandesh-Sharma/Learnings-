import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                helper(Colors.red, 1),
                helper(Colors.orange, 2),
                helper(Colors.yellow, 3),
                helper(Colors.green, 4),
                helper(Colors.blue, 5),
                helper(Colors.indigo, 6),
                helper(Colors.purple, 7),
              ]),
        ),
      ),
    );
  }

  Widget helper(Color colorName, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: colorName,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }
}
