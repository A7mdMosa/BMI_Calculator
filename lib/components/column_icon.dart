import 'package:flutter/material.dart';

class ColumnIcon extends StatelessWidget {
  final IconData iconData;
  final String gender;
  final Color iconColor;
  ColumnIcon(
      {required this.iconData, required this.gender, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 85,
          color: iconColor,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          gender,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: iconColor),
        )
      ],
    );
  }
}
