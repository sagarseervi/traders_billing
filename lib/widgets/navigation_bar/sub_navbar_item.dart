import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';
import 'package:traders_billing/constants.dart';

class SubNavbarItem extends StatelessWidget {
  final bool active;
  final String text;
  final Function onTap;
  const SubNavbarItem({
    Key key,
    this.active,
    this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 50,
      child: ListTile(
        onTap: onTap,
        //tileColor: active ? Colors.green.withOpacity(.3) : null,
        title: NavText(
          text: text,
          color: kprimaryPurple,
          size: active ? 20 : 16,
          weight: active ? FontWeight.bold : FontWeight.w500,
        ),
      ),
    );
  }
}
