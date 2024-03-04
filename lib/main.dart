import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              xylophoneButton(buttonColor: Colors.red, soundNumber: 1),
              xylophoneButton(buttonColor: Colors.orange, soundNumber: 2),
              xylophoneButton(buttonColor: Colors.yellow, soundNumber: 3),
              xylophoneButton(buttonColor: Colors.green, soundNumber: 4),
              xylophoneButton(buttonColor: Colors.teal, soundNumber: 5),
              xylophoneButton(buttonColor: Colors.blue, soundNumber: 6),
              xylophoneButton(buttonColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded xylophoneButton({required MaterialColor buttonColor, required int soundNumber}) {
    return Expanded(
      flex: 1,
      child: Container(
                color: buttonColor,
                child: TextButton(
                  onPressed: (){
                    playSound(soundNumber);
                  }, child: Text(''),
                ),
                ),
    );
  }
}

