import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final Widget child;
  final VoidCallback? onPress;

  CardWidget({required this.color, required this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            12,
          ),
          color: color,
        ),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
