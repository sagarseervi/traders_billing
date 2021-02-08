import 'package:flutter/material.dart';
import 'package:traders_billing/constants.dart';

class RoundedButtonSmall extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButtonSmall({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.05,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: kprimaryYellow,
            onPressed: press,
            child: Text(
              text,
              style:
                  TextStyle(color: kprimaryPurple, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
