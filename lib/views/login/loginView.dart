import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traders_billing/components/account_check.dart';
import 'package:traders_billing/components/rounded_button.dart';
import 'package:traders_billing/components/rounded_input_field.dart';
import 'package:traders_billing/components/rounded_password_field.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/views/home/home_page.dart';
import 'package:traders_billing/views/signup/signupView.dart';

class LoginView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provide us total height & width of screen
    return Scaffold(
      key: _key,
      backgroundColor: kBgGrey,
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 150, horizontal: 250),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Traders Billing Login",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.05),
              RoundedInputField(
                hintText: "Type your Email here",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "Login",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePageDesktop();
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
      ),
    );
  }
}
