import 'package:flutter/material.dart';
import 'package:traders_billing/components/form_text_field.dart';

class AddFarmerBody extends StatefulWidget {
  AddFarmerBody({Key key}) : super(key: key);

  @override
  _AddFarmerBodyState createState() => _AddFarmerBodyState();
}

class _AddFarmerBodyState extends State<AddFarmerBody> {
  final formkey = GlobalKey<FormState>();
  String firstname;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provide us total height & width of screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 100, horizontal: 150),
        color: Colors.white,
        child: Form(
            child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(width: size.width * .50),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: size.height * 0.05),
                Text(
                  "Add New Farmer",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                FormTextField(
                  labelText: "First Name",
                  returnText: "Please Enter the First Name",
                ),
                FormTextField(
                  labelText: "Last Name",
                  returnText: "Please Enter the Last Name",
                ),
                FormTextField(
                  labelText: "Date Of Birth",
                  returnText: "Please Enter the Date of Birth",
                ),
                FormTextField(
                  labelText: "Alt Contact Number",
                  returnText: "Please Enter Alt. Contact Number",
                ),
                FormTextField(
                  labelText: "Village",
                  returnText: "Please Enter Village Name",
                ),
                FormTextField(
                  labelText: "Address",
                  returnText: "Please Enter Address",
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
                  labelText: "Middle Name",
                  returnText: "Please Enter the Middle Name",
                ),
                FormTextField(
                  labelText: "Contact Number",
                  returnText: "Please Enter the Middle Name",
                ),
                FormTextField(
                  labelText: "Email",
                  returnText: "Please Enter the Middle Name",
                ),
                FormTextField(
                  labelText: "Town",
                  returnText: "Please Enter the Middle Name",
                ),
                FormTextField(
                  labelText: "State",
                  returnText: "Enter State",
                ),
                FormTextField(
                  labelText: "Pincode",
                  returnText: "Enter Pincode",
                ),
                FormTextField(
                  labelText: "Description",
                  returnText: "Enter Description",
                ),
                SizedBox(height: size.height * 0.05),
                RaisedButton(
                    child: Text("Submit"),
                    onPressed: () {
                      formkey.currentState.save();
                      formkey.currentState.validate();
                    })
              ],
            )
          ],
        )),
      ),
    );
  }
}
