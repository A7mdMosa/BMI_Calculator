import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bmi_calc.dart';
import '../constants.dart';
import '../components/bottom_button.dart';
import '../components/card_widget.dart';
import '../components/column_icon.dart';
import '../components/new_icon_button.dart';
import 'result_page.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 20;

  Gender gender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: CardWidget(
                  onPress: () {
                    setState(() {
                      gender = Gender.male;
                    });
                  },
                  color: gender == Gender.male ? kActiveColor : kInActiveColor,
                  child: ColumnIcon(
                    iconData: FontAwesomeIcons.mars,
                    gender: 'MALE',
                    iconColor:
                        gender == Gender.male ? kOnlineColor : kOfflineColor,
                  ),
                ),
              ),
              Expanded(
                child: CardWidget(
                  onPress: () {
                    setState(() {
                      gender = Gender.female;
                    });
                  },
                  color:
                      gender == Gender.female ? kActiveColor : kInActiveColor,
                  child: ColumnIcon(
                    iconData: FontAwesomeIcons.venus,
                    gender: 'FEMALE',
                    iconColor:
                        gender == Gender.female ? kOnlineColor : kOfflineColor,
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            child: CardWidget(
              color: kActiveColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kPropertyTextStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: kGreyText),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kGreyText,
                      inactiveTrackColor: Color(0xff051009),
                      thumbColor: kBottomContainerColor,
                      overlayColor: Color(0x40178366),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                    ),
                    child: Slider(
                        min: 120,
                        max: 220,
                        value: height.toDouble(),
                        onChanged: (newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: CardWidget(
                  color: kActiveColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('WEIGHT', style: kPropertyTextStyle),
                      SizedBox(
                        height: 10,
                      ),
                      Text(weight.toString(), style: kNumberStyle),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NewIconButton(
                            iconData: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          NewIconButton(
                            iconData: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: CardWidget(
                  color: kActiveColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kPropertyTextStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(age.toString(), style: kNumberStyle),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NewIconButton(
                            iconData: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          NewIconButton(
                            iconData: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
          BottomButton(
            buttonName: 'CALCULATE',
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                    bmiBodyWeight: calc.getBmiBodyWeight(),
                    bmiRange: calc.getBmiRange(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
