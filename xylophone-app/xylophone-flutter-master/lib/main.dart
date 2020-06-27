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
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    color: Colors.amber,
                    hoverColor: Colors.white,
                    onPressed: () {
                      playSound(1);
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.indigo,
                      onPressed: () {
                        playSound(2);
                      },
                      child: Text('')),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.blue,
                      onPressed: () {
                        playSound(3);
                      },
                      child: Text('')),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.green,
                      onPressed: () {
                        playSound(4);
                      },
                      child: Text('')),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.yellow,
                      onPressed: () {
                        playSound(5);
                      },
                      child: Text('')),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {
                      playSound(6);
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      playSound(7);
                    },
                    child: Text(''),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
