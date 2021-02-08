import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';
import 'package:traders_billing/constants.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          height: 600,
          width: 1000,
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              SizedBox(height: 20),
              PageHeader(
                text: 'Settings',
                color: kprimaryBlack,
                weight: FontWeight.w700,
                size: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
