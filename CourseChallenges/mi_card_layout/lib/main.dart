import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Doge(),
  ));
}

class Doge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              height: double.infinity,
              color: Colors.red,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.white,
                ),
              ],
            ),
            Container(
              width: 100,
              height: double.infinity,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
