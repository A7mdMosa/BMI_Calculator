import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ButtomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  ButtomButton({required this.buttonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 15),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kButtomContainerHeight,
        color: kButtomContainerColor,
        child: Center(
          child: Text(
            buttonName,
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
                shadows: [
                  Shadow(blurRadius: 20.0, color: kGreyText),
                ]),
          ),
        ),
      ),
    );
  }
}
