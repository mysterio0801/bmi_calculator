import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
BottomButton({@required this.buttonTitle, @required this.onTap});
final Function onTap;
final String buttonTitle;

@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      child: Center(
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
      color: bottomContainerColor,
      height: bottomContainerHeight,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10.0),
    ),
  );
}
}