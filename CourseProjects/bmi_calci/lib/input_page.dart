import 'package:bmi_calci/constants.dart';
import 'package:bmi_calci/icon_content.dart';
import 'package:bmi_calci/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kinactiveCardColor;
  Color femaleCardColor = kinactiveCardColor;
  Gender selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    col: (selectedgender == Gender.male)
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: IconContents(
                        icon: FontAwesomeIcons.mars, label: 'Male'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    col: (selectedgender == Gender.female)
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: IconContents(
                        icon: FontAwesomeIcons.venus, label: 'Female'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              col: kactiveCardColor,
            cardChild: Column(
              children: <Widget>[

                Text('HEIGHT',
                style: klabelStyle,),
                
                Row(
                  children: <Widget>[
                    Text(
                      '180',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ],
                )




              ],
            ),),
            
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    col: kinactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    col: kinactiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomNavigationBarHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: kbottomContainerColor,
            ),
          ),
        ],
      ),
    );
  }
}
