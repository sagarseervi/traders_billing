import 'package:flutter/material.dart';
import 'package:traders_billing/constants.dart';

class AddButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const AddButton({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      decoration: BoxDecoration(
        border: Border.all(
          color: kprimaryBlack,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      width: 300,
      child: TextButton.icon(
        onPressed: press,
        icon: Icon(Icons.add_box_rounded, color: kprimaryBlack, size: 36),
        label: Text(
          text,
          style: TextStyle(
              color: kprimaryBlack,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        ),
      ),
    );
  }
}

class FormButton extends StatelessWidget {
  final Function press;
  final String text;
  const FormButton({Key key, this.press, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: press,
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.yellow,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          text,
          style: TextStyle(
              color: kprimaryBlack,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        ),
      ),
    );
  }
}
