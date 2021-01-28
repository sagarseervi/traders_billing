import 'package:flutter/material.dart';

class DropDownList extends StatelessWidget {
  const DropDownList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provide us total height & width of screen
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.02,
      child: DropDownList(),
    );
  }
}
