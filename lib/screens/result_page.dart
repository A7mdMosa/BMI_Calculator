import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/buttom_button.dart';
import 'package:bmi_calculator/components/card_widget.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {required this.interpretation,
      required this.bmiResult,
      required this.resultText,
      required this.bmiBodyWeight,
      required this.bmiRange});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String bmiBodyWeight;
  final String bmiRange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Center(
            child: Text(
              'THE RESULT',
              style: TextStyle(
                  color: kResultColor,
                  fontSize: 50,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: CardWidget(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(resultText, style: kResultTextStyle), //the result
                Text('$bmiBodyWeight \n $bmiRange',
                    textAlign: TextAlign.center,
                    style: kPropertyTextStyle), //your body range

                Text(bmiResult, style: kResultNumberStyle), //bmi

                Text(interpretation, //interpretation
                    textAlign: TextAlign.center,
                    style: kPropertyTextStyle),
              ],
            ),
            color: kActiveColor,
          ),
        ),
        SizedBox(height: 50),
        ButtomButton(
            buttonName: 'RE_CALCULATE',
            onTap: () {
              Navigator.pop(context);
            }),
      ]),
    );
  }
}
