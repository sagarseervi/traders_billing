import 'package:flutter/material.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/loacator.dart';
import 'package:traders_billing/views/login/loginView.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Traders Billing',
      theme: ThemeData(
        primaryColor: kprimaryYellow,
        scaffoldBackgroundColor: kBgGrey,
      ),
      home: LoginView(),
    );
  }
}
