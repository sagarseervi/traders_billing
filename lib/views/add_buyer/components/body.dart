import 'package:flutter/material.dart';
import 'package:traders_billing/components/form_text_field.dart';

class AddBuyerBody extends StatefulWidget {
  AddBuyerBody({Key key}) : super(key: key);

  @override
  _AddBuyerBodyState createState() => _AddBuyerBodyState();
}

class _AddBuyerBodyState extends State<AddBuyerBody> {
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
                SizedBox(width: size.width * 0.20),
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(height: size.height * 0.05),
                Text(
                  "Add New Buyer",
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
                SizedBox(height: size.height * 0.05),
                Text(
                  "Personal Account Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                FormTextField(
                  labelText: "Buyer ID Type",
                  returnText: "Please Enter the First Name",
                ),
                SizedBox(height: size.height * 0.05),
                Text(
                  "Account Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                FormTextField(
                  labelText: "Bank Name",
                  returnText: "Enter Bank Name",
                ),
                FormTextField(
                  labelText: "Account Type",
                  returnText: "Enter the Account Type",
                ),
                FormTextField(
                  labelText: "IFSC Code",
                  returnText: "Enter IFSC Code",
                ),
                SizedBox(height: size.height * 0.05),
                Text(
                  "Other Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                FormTextField(
                  labelText: "Vehicle Details",
                  returnText: "Enter Vehicle Details",
                ),
                FormTextField(
                  labelText: "Driver Name",
                  returnText: "Enter Driver Name",
                ),
                FormTextField(
                  labelText: "Reg. No.",
                  returnText: "Enter Reg. no.",
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
                SizedBox(height: size.height * 0.06),
                FormTextField(
                  labelText: "ID Name",
                  returnText: "Enter ID Name",
                ),
                SizedBox(height: size.height * 0.07),
                FormTextField(
                  labelText: "Holder Name",
                  returnText: "Enter Holder Name",
                ),
                FormTextField(
                  labelText: "Account No.",
                  returnText: "Enter Account No.",
                ),
                FormTextField(
                  labelText: "Branch Name",
                  returnText: "Enter Branch Name",
                ),
                SizedBox(height: size.height * 0.08),
                FormTextField(
                  labelText: "Vehicle Name",
                  returnText: "Enter Vehicle Name",
                ),
                FormTextField(
                  labelText: "Contact No.",
                  returnText: "Contact No.",
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
