import 'dart:ui';

import 'package:flutter/material.dart';
//import 'package:traders_billing/components/account_check.dart';
import 'package:traders_billing/components/rounded_button.dart';
//import 'package:traders_billing/components/rounded_input_field.dart';
//import 'package:traders_billing/components/rounded_password_field.dart';
import 'package:traders_billing/views/add_farmer/addFarmer.dart';
import 'package:traders_billing/views/arrivals/arrivalsView.dart';
//import 'package:traders_billing/views/arrivals/arrivalsView.dart';
//import 'package:traders_billing/views/dashboard/dashboard.dart';
//import 'package:traders_billing/views/signup/signupView.dart';
//import 'package:traders_billing/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provide us total height & width of screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 150, horizontal: 250),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Traders Billing Dashboardr",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Add Farmer",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddFarmerView();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Arrivals",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ArrivalsView();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Profile",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AddFarmerView();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
