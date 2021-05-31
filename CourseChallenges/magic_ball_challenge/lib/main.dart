import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlue[400],
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Center(
              child: Text(
                "Ask Me Anything",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          body: HomeAMA(),
        ),
      ),
    );

class HomeAMA extends StatefulWidget {
  @override
  _HomeAMAState createState() => _HomeAMAState();
}

class _HomeAMAState extends State<HomeAMA> {
  int numOnBall = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: FlatButton(
      onPressed: () {
        predictFuture();
      },
      child: Center(
        child: Container(
          child: Image.asset('images/ball$numOnBall.png'),
        ),
      ),
    ));
  }

  void predictFuture() {
    setState(() {
      numOnBall = Random().nextInt(5) + 1;
    });
  }
}
