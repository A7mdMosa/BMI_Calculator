import 'package:flutter/material.dart';

import '../constants.dart';

class NewIconButton extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPress;
  NewIconButton({required this.iconData, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(iconData, color: Colors.black87),
      fillColor: kBottomContainerColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      constraints: BoxConstraints.tightFor(
        width: 55.0,
        height: 60.0,
      ),
    );
  }
}
