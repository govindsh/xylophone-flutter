import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void playSound(int fileNumber) {
      final player = AudioCache();
      player.play('note$fileNumber.wav');

    }

    Widget buildKey({Color color, int fileNumber}) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(fileNumber);
          },
        ),
      );
    }


    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Play the Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.blue, fileNumber: 1),
              buildKey(color: Colors.green, fileNumber: 2),
              buildKey(color: Colors.yellow, fileNumber: 3),
              buildKey(color: Colors.deepOrange, fileNumber: 4),
              buildKey(color: Colors.brown, fileNumber: 5),
              buildKey(color: Colors.purple, fileNumber: 6),
              buildKey(color: Colors.pinkAccent, fileNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
