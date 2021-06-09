import 'package:flutter/material.dart';

class RoundIconnButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  RoundIconnButton({@required this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      // splashColor: Color(0xff4c4f5e),
    );
  }
}
