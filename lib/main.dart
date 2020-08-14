import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.black,
    body: FanPage(),
  )));
}

class FanPage extends StatefulWidget {
  @override
  _FanPageState createState() => _FanPageState();
}

class _FanPageState extends State<FanPage> {
  int number = 1;

  void picture() {
    setState(() {
      number = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child:
                    Image.asset('images/logo.jpg', height: 50.0, width: 100.0),
              ),
            ),
            SizedBox(height: 100.0),
          ],
        ),
        Row(children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                picture();
              },
              child: Image.asset('images/0$number.jpg'),
            ),
          )
        ]),
        Row(children: <Widget>[
          SizedBox(height: 50.0),
          FlatButton(
              child: Text(
            'Listen to IU Album',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'DancingScript'),
          ))
        ]),
        Row(children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('Jazz01.mp3');
                  },
                  child: Image.asset('images/IU2.jpeg'))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('Jazz02.mp3');
                  },
                  child: Image.asset('images/IU4.jpeg'))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.play('Jazz03.mp3');
                  },
                  child: Image.asset('images/IU5.jpeg'))),
        ]),
        Row(children: <Widget>[
          SizedBox(height: 50.0),
          FlatButton(
              child: Text(
            'Music Player',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                fontFamily: 'DancingScript'),
          ))
        ]),
        Row(children: <Widget>[
          FlatButton(
              child: Image.asset('images/player0.jpeg',
                  height: 180.0, width: 180.0)),
          Container(
              child: Image.asset('images/playlist1.jpg',
                  height: 180.0, width: 200.0))
        ]),
        Row(children: <Widget>[
          SizedBox(height: 100.0),
          FlatButton(
              child: Text(
            'This particular fan app '
            'personal study.',
            style: TextStyle(
                fontSize: 10.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
                fontFamily: 'DancingScript'),
          ))
        ]),
      ]),
    );
  }
}
