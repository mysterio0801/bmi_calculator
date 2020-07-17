import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards({@required this.colour, this.childCard, this.onPress});

  final Color colour;
  final childCard;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
