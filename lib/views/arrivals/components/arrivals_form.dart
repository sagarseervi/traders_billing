import 'package:flutter/material.dart';
import 'package:traders_billing/components/form_text_field.dart';

class ArrivalsForm extends StatefulWidget {
  ArrivalsForm({Key key}) : super(key: key);

  @override
  _ArrivalsFormState createState() => _ArrivalsFormState();
}

class _ArrivalsFormState extends State<ArrivalsForm> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Form(
            child: Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            //SizedBox(width: size.width * 0.10),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Text(
              "New Arrivals",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            FormTextField(
              labelText: "Farmer ID",
              returnText: "Please Enter the First Name",
            ),
            FormTextField(
              labelText: "Address",
              returnText: "Enter the Address",
            ),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(width: size.width * 0.03),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.07),
            FormTextField(
              labelText: "Farmer Contact",
              returnText: "Enter Farmer Contact",
            ),
            FormTextField(
              labelText: "Town",
              returnText: "Enter the Town Name",
            ),
            FormTextField(
              labelText: "City",
              returnText: "Enter the City Name",
            ),
            FormTextField(
              labelText: "State",
              returnText: "Enter the State Name",
            ),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(width: size.width * 0.03),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.07),
            FormTextField(
              labelText: "Farmer Name",
              returnText: "Enter Farmer Name",
            ),
            SizedBox(height: size.height * 0.05),
            RaisedButton(
                child: Text("Submit"),
                onPressed: () {
                  formkey.currentState.save();
                  formkey.currentState.validate();
                })
          ],
        ),
      ],
    )));
  }
}
