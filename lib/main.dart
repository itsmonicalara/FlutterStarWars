import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Hope extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'X',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              creaTecla(Colors.deepOrange, 1),
              creaTecla(Colors.deepPurpleAccent, 2),
              creaTecla(Colors.amber, 3),
              creaTecla(Colors.blue, 4),
              creaTecla(Colors.brown, 5),
              creaTecla(Colors.green, 6),
              creaTecla(Colors.teal, 7),
              creaTecla(Colors.redAccent, 8),
              creaTecla(Colors.limeAccent, 9),
              creaTecla(Colors.pinkAccent, 10),
            ],
          ),
        ),
      ),
    );
  }
  void teclaSound(int nota){
    final audioPlayer = AudioCache();
    audioPlayer.play('sound$nota.mp3');
  }
  Expanded creaTecla(Color color, int nota){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          teclaSound(nota);
        },
        color: color,
      ),
    );
  }
}

void main() {
  runApp(
      MaterialApp(
        title: "Hope: Star Wars App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Hope(),
        ),
      )
  );
}

