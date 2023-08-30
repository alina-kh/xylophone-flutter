import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$number.wav'));
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
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  onPressed: () async {
                    playSound(1);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange),
                  ),
                  onPressed: () async {
                    playSound(2);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                  ),
                  onPressed: () async {
                    playSound(3);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                  ),
                  onPressed: () async {
                    playSound(4);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  ),
                  onPressed: () async {
                    playSound(5);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.pink),
                  ),
                  onPressed: () async {
                    playSound(6);
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.purple),
                  ),
                  onPressed: () async {
                    playSound(7);
                  },
                  child: Text(''),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
