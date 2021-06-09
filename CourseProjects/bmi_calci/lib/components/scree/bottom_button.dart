import 'package:bmi_calci/components/scree/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  const BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: kLargeButtonStyle,
        )),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        color: kbottomContainerColor,
        height: kBottomNavigationBarHeight,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(20.0),
        //   color: kbottomContainerColor,
        // ),
      ),
    );
  }
}
