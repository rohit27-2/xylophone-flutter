import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int i) {
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$i.wav'));
  }

  Expanded buildKey({required Color color, int i = 1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          foregroundColor: color,
        ),
        onPressed: () {
          playSound(i);
        },
        child: const Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.purple, i: 1),
                buildKey(color: Colors.red, i: 2),
                buildKey(color: Colors.yellow, i: 3),
                buildKey(color: Colors.blue, i: 4),
                buildKey(color: Colors.green, i: 5),
                buildKey(color: Colors.pink, i: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
