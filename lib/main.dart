import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioCache();

    void playSound(int number) {
      player.play('note$number.wav');
    }

    Expanded buildKey({Color color, int soundNumber}) {
      return Expanded(
        child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          color: color,
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red.shade700, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green.shade700, soundNumber: 4),
              buildKey(color: Colors.teal.shade700, soundNumber: 5),
              buildKey(color: Colors.blue.shade700, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}
