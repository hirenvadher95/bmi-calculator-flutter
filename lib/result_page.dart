import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.interpretatin, this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretatin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: titleTextTextSyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activeCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiResult,
                      style: resultTextStyle,
                    ),
                    Text(
                      resultText,
                      style: bmiTextStyle,
                    ),
                    Text(
                      interpretatin,
                      textAlign: TextAlign.center,
                      style: bodyTextStyle,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: "Re-Calculate",
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
