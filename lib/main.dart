import 'dart:math';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatefulWidget {


  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  int i=1;


  void playSound(int i)  {
    setState(() async {
      i= Random().nextInt(7)+1;
      {
        final player = AudioPlayer();
        await player.play(
            AssetSource('note$i.wav')); // will immediately start playing

      }
    });


  }

  Expanded buildUi(Color colour, int i){
    return  Expanded(
      child: Container(
        color: colour,
        child: TextButton(
          onPressed: ()  {
            playSound(i); },
          child: const Text('Click me'),
        ),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildUi(Colors.red,1),
              buildUi(Colors.yellow,2),
              buildUi(Colors.cyan,3),
              buildUi(Colors.teal,4),
              buildUi(Colors.green,5),
              buildUi(Colors.purple,6),
              buildUi(Colors.indigo,7)

              // Expanded(
              //   child: Container(
              //     color: Colors.yellow,
              //     child: TextButton(
              //       onPressed: ()  {
              //         playSound(); },
              //       child: Text('Click me'),
              //     ),
              //
              //   ),
              // ),
              // Expanded(
              //   child: Expanded(
              //     child: Container(
              //       child: TextButton(
              //         onPressed: ()  {
              //          playSound() ;},
              //         child: Text('Click me'),
              //       ),
              //       color: Colors.green,
              //
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //
              //     child: TextButton(
              //       onPressed: ()  {
              //        playSound();  },
              //       child: Text('Click me'),
              //     ),
              //     color: Colors.indigo,
              //
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //
              //     child: TextButton(
              //       onPressed: ()  {
              //        playSound();   },
              //       child: Text('Click me'),
              //     ),
              //     color: Colors.red,
              //
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //
              //     child: TextButton(
              //       onPressed: ()  {
              //         playSound();   },
              //       child: Text('Click me'),
              //     ),
              //     color: Colors.cyan,
              //
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //
              //     child: TextButton(
              //       onPressed: ()  {
              //        playSound();  },
              //       child: Text('Click me'),
              //     ),
              //     color: Colors.teal,
              //
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //
              //     child: TextButton(
              //       onPressed: ()  {
              //       playSound();   },
              //       child: Text('Click me'),
              //     ),
              //     color: Colors.purple,
              //
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}


