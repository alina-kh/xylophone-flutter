import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(color, text, int number) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('note$number.wav'));
        },
        child: Text('$text'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              buildKey(Colors.red, '', 1),
              buildKey(Colors.orange, '', 2),
              buildKey(Colors.yellow, '', 3),
              buildKey(Colors.green, '', 4),
              buildKey(Colors.teal, '', 5),
              buildKey(Colors.blue, '', 6),
              buildKey(Colors.purple, '', 7)
            ]
          ),
        ),
      ),
    );
  }
}
