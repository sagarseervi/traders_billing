import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:traders_billing/components/form_text_field.dart';
import 'package:traders_billing/views/arrivals/components/arrivals_form.dart';
import 'package:traders_billing/views/arrivals/components/arrivals_table.dart';
import 'package:traders_billing/widgets/navigation_bar/side_navigation.dart';

class ArrivalsBody extends StatefulWidget {
  ArrivalsBody({Key key}) : super(key: key);

  @override
  _ArrivalsBodyState createState() => _ArrivalsBodyState();
}

class _ArrivalsBodyState extends State<ArrivalsBody> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provide us total height & width of screen
    return Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Traders Billing'),
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: <Widget>[
                      //SizedBox(height: size.height * 0.02),
                      SideNavigationBar(),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: size.height * 0.02),
                    Container(
                      width: size.width * 0.7,
                      alignment: Alignment.topLeft,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      color: Colors.white,
                      child: Column(
                        children: [
                          ArrivalsForm(),
                          SizedBox(height: size.height * 0.02),
                          ArrivalsTable()
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
