import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            title: Center(child: Text("Ask Me Anything")),
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
  int nos = 1;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: FlatButton(
              onPressed: (){
                    setState(() {
                      nos = Random().nextInt(5)+1;
                    });
              },
              child: Image.asset("images/ball$nos.png")),
      ),
    );
  }
}
