import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_field_container.dart';

import '../constants.dart';

class RoundedInputArea extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputArea({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextArea(
      child: TextArea(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kprimaryPurple,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

Widget TextArea({TextField child, InputDecoration decoration, onChanged}) {}
