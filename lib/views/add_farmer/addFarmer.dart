import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/views/add_farmer/components/add_farmer_form.dart';

class AddFarmerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          height: 1800,
          width: 1000,
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              PageHeader(
                text: 'Add New Farmer',
                color: kprimaryBlack,
                weight: FontWeight.w700,
                size: 20,
              ),
              SizedBox(
                width: 1000,
                child: AddfarmerForm(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
