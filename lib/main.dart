import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      SoundApp()
  );
}

class SoundApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade900,
          title: Center(
            child: Text(
              'A Bird with sound',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               FlatButton(
                 color: Colors.teal.shade200,
                 child: Image.asset('images/bird.jpg'),
                 onPressed: (){
                   final player = AudioCache();
                   player.play('bird.wav');
                 },
               ),
            ],
          ),
        ),
      ),
    );
  }
}
