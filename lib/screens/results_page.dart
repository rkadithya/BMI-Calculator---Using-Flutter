import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:bmi_calculator/components/Bottom_Button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kkResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmitextStyle,
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kBmiText,
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE CALCULATE")
        ],
      ),
    );
  }
}