import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/views/add_gang/components/add_gang_form.dart';

class AddGangView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          height: 1200,
          width: 1000,
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              PageHeader(
                text: 'Add New Gang',
                color: kprimaryBlack,
                weight: FontWeight.w700,
                size: 20,
              ),
              SizedBox(
                width: 1000,
                child: AddGangForm(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
