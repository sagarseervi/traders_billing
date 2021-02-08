import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/views/pesticide/components/pesticide_form.dart';

class PesticideView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          height: 1000,
          width: 1000,
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              SizedBox(height: 20),
              PageHeader(
                text: 'Pesticide Distribution',
                color: kprimaryBlack,
                weight: FontWeight.w700,
                size: 20,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(width: 800, child: PesticideForm()),
            ],
          ),
        )
      ],
    );
  }
}
