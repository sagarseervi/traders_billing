import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String labelText;
  final String returnText;
  const FormTextField({
    Key key,
    this.labelText,
    this.returnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.02,
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return returnText;
          }
          return "";
        },
        decoration: InputDecoration(
          labelText: labelText,
        ),
      ),
    );
  }
}
