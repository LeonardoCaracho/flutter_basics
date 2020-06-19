import 'package:flutter/material.dart';

import '../constants.dart';


class ButtonBottom extends StatelessWidget {
  ButtonBottom({@required this.text, @required this.onClick});
  
  final String text;
  final Function onClick;
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage()));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: Center(
          child: Text(
            text, 
            style: kLargeButtonTextStyle
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomContainerHeight
      ),
    );
  }
}