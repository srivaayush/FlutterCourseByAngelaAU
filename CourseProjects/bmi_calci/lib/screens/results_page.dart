// import 'dart:html';

import 'package:bmi_calci/components/scree/bottom_button.dart';
import 'package:bmi_calci/components/scree/constants.dart';
import 'package:bmi_calci/components/scree/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult,@required this.resultText,@required this.interpretations}) ;
 final String bmiResult;
  final String resultText;
  final String interpretations;

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("RESULTS"),
      ),
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results:',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReusableCard(
                col: kactiveCardColor,
                cardChild: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult.toUpperCase(),
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretations.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
