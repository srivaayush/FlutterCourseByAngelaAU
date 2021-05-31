import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(          
          backgroundColor: Color.alphaBlend(Colors.amberAccent, Colors.black12),
          title: Text("I am Poor App!"),
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/poor.jpg'),          
          ),
        ),
      ),
    );
  }
}
