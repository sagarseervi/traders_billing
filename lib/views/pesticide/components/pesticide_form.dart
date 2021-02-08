import 'package:flutter/material.dart';
import 'package:traders_billing/components/form_input_field.dart';
//import 'package:traders_billing/views/arrivals/components/arrivals_table.dart';

class PesticideForm extends StatefulWidget {
  PesticideForm({Key key}) : super(key: key);

  @override
  _PesticideFormState createState() => _PesticideFormState();
}

class _PesticideFormState extends State<PesticideForm> {
  final _pesticideFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _pesticideFormKey,
          child: SizedBox(
            width: 800,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FormInputField(
                              labelText: 'Farmer ID',
                            ),
                            FormInputField(
                              labelText: 'Name',
                            ),
                            FormInputField(
                              labelText: 'Address',
                            ),
                            FormInputField(
                              labelText: 'Amount Advance',
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FormInputField(
                              labelText: 'Contact',
                            ),
                            FormInputField(
                              labelText: 'City',
                            ),
                            FormInputField(
                              labelText: 'Pincode',
                            ),
                            FormInputField(
                              labelText: 'Balance Owe Amount',
                            ),
                          ],
                        ))
                  ],
                ),
                SizedBox(height: 20),
                //ArrivalsTable(),
                SizedBox(height: 50),
                ElevatedButton(
                    onPressed: () {
                      if (_pesticideFormKey.currentState.validate()) {
                        Scaffold.of(context).showBottomSheet(
                            (context) => Text('Form Submitted'));
                        //Scaffold.of(context).showSnackBar(
                        // Snackbar(content: Text('Form Submitted')));
                      }
                    },
                    child: Text('Submit'))
              ],
            ),
          )),
    );
  }
}
