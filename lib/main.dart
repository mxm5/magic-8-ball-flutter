import 'dart:ffi';
import 'dart:wasm';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('the magic 8 ball'),backgroundColor: Colors.cyan,),
          backgroundColor: Colors.cyan,
          body: Center(
            child: question_answerer(),
          ),
        ),
      ),
    );

class question_answerer extends StatefulWidget {
  @override
  _question_answererState createState() => _question_answererState();
}

class _question_answererState extends State<question_answerer> {
  //writing the things we need here
  int ball_number = 1;
  VoidCallback change_face() {
    ball_number = Random().nextInt(5)+1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: FlatButton(
          onPressed: (){
            setState(() {
              change_face();
            });
          },
          child: Image.asset('images/ball$ball_number.png'),
        ),
      ),
    );
  }
}
