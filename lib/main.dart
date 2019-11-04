import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightGreen,
          appBar: AppBar(
            title: Text('Magic Ball',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),),
            backgroundColor: Colors.green,
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int tball = 1;

  void click(){
    tball  = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  click();
                });
              },
              child: Image.asset('images/ball$tball.png'),
            ),
          )
        ],
      ),
    );
  }
}

