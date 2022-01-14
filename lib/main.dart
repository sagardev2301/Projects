import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: XyloHome(),
      ),
    ),
  );
}

class XyloHome extends StatefulWidget {
  const XyloHome({Key? key}) : super(key: key);

  @override
  _XyloHomeState createState() => _XyloHomeState();
}

class _XyloHomeState extends State<XyloHome> {
  void soundPlay(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey(int number, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          soundPlay(number);
        },
        child: SizedBox(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(1, Colors.red),
          buildKey(2, Colors.pink),
          buildKey(3, Colors.orange),
          buildKey(4, Colors.yellow),
          buildKey(5, Colors.green),
          buildKey(6, Colors.blue),
          buildKey(7, Colors.purple),
        ],
      ),
    );
  }
}
