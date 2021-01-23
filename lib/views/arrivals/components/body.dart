import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traders_billing/components/account_check.dart';
import 'package:traders_billing/components/rounded_button.dart';
import 'package:traders_billing/components/rounded_input_field.dart';
import 'package:traders_billing/components/rounded_input_area.dart';
import 'package:traders_billing/views/dashboard/dashboard.dart';
import 'package:traders_billing/views/signup/signupView.dart';
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
              "New Stock Entry",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    RoundedInputField(
                      hintText: "Farmer ID",
                      onChanged: (value) {},
                    ),
                    RoundedInputField(
                      hintText: "Farmer Contact",
                      onChanged: (value) {},
                    ),
                    RoundedInputField(
                      hintText: "Farmer Name",
                      onChanged: (value) {},
                    ),
                    RoundedInputArea(
                      hintText: "Address",
                      onChanged: (value) {},
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.05, width: size.width * 0.07),
                Column(
                  children: <Widget>[
                    RoundedInputField(
                      hintText: "Farmer ID",
                      onChanged: (value) {},
                    ),
                    RoundedInputField(
                      hintText: "Farmer Contact",
                      onChanged: (value) {},
                    ),
                    RoundedInputField(
                      hintText: "Farmer Name",
                      onChanged: (value) {},
                    ),
                    RoundedInputArea(
                      hintText: "Address",
                      onChanged: (value) {},
                    )
                  ],
                ),
              ],
            ),
            RoundedButton(
              text: "Login",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DashboardView();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpView();
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
