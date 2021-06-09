import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.col, this.cardChild, this.onPress});
  final Color col;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15),
          height: 200,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: col,
          ),
        ),
      ),
    );
  }
}
