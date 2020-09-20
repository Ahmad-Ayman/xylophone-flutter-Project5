import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildNotes(int noteNumber, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // call this method when desired

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildNotes(1, Colors.red),
              buildNotes(2, Colors.orange),
              buildNotes(3, Colors.yellow),
              buildNotes(4, Colors.green),
              buildNotes(5, Colors.teal),
              buildNotes(6, Colors.blue),
              buildNotes(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
