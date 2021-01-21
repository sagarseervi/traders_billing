import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traders_billing/components/account_check.dart';
import 'package:traders_billing/components/rounded_button.dart';
import 'package:traders_billing/components/rounded_input_field.dart';
import 'package:traders_billing/components/rounded_password_field.dart';
import 'package:traders_billing/views/login/loginView.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provide us total height & width of screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Traders Billing Sign Up",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.07),
          RoundedInputField(
            hintText: "Your Name",
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: "Your Phone no.",
            icon: Icons.phone,
            onChanged: (value) {},
          ),
          RoundedInputField(
            hintText: "Type your Email here",
            icon: Icons.email,
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Sign Up",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginView();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
