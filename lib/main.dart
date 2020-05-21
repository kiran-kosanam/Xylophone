import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = new AudioCache();
  void playSound(int number){
    player.play('note$number.wav');
  }

  Expanded buildKey({Color col,int number}){
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: (){
          playSound(number);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(

          child: Column(
//            mainAxisAlignment: MainAxisAlignment.,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(col: Colors.red, number: 1),
              buildKey(col: Colors.orange, number: 2),
              buildKey(col: Colors.yellow, number: 3),
              buildKey(col: Colors.green, number: 4),
              buildKey(col: Colors.blue, number: 5),
              buildKey(col: Colors.indigo, number: 6),
              buildKey(col: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
