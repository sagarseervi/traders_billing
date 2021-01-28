import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traders_billing/components/rounded_button.dart';
import 'package:traders_billing/views/add_buyer/addBuyer.dart';
import 'package:traders_billing/views/add_farmer/addFarmer.dart';
import 'package:traders_billing/views/arrivals/arrivalsView.dart';
//import 'package:traders_billing/components/form_text_field.dart';
import 'package:traders_billing/widgets/navigation_bar/side_navigation.dart';

class DashboardBody extends StatefulWidget {
  DashboardBody({Key key}) : super(key: key);

  @override
  _DashboardBodyState createState() => _DashboardBodyState();
}

class _DashboardBodyState extends State<DashboardBody> {
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
                Column(
                  children: <Widget>[
                    SizedBox(height: size.height * 0.02),
                    SideNavigationBar(),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(height: size.height * 0.02),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      padding:
                          EdgeInsets.symmetric(vertical: 100, horizontal: 200),
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
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
                            text: "New Stock Arrivals",
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
                            text: "Add Buyer",
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return AddBuyerView();
                                  },
                                ),
                              );
                            },
                          ),
                          RoundedButton(
                            text: "Add Gang",
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
