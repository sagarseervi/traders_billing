import 'package:flutter/material.dart';
import 'package:traders_billing/components/buttons.dart';
import 'package:traders_billing/components/form_input_field.dart';
import 'package:traders_billing/components/text_styles.dart';

class AddGangForm extends StatefulWidget {
  AddGangForm({Key key}) : super(key: key);

  @override
  _AddGangState createState() => _AddGangState();
}

class _AddGangState extends State<AddGangForm> {
  final _gangformKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _gangformKey,
          child: SizedBox(
            width: 70,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          FormInputField(
                            labelText: 'First Name',
                          ),
                          FormInputField(
                            labelText: 'Last Name',
                          ),
                          FormInputField(
                            labelText: 'Date of Birth',
                          ),
                          FormInputField(
                            labelText: 'Alt Contact No.',
                          ),
                          FormInputField(
                            labelText: 'Village',
                          ),
                          FormInputField(
                            labelText: 'City',
                          ),
                          FormInputField(
                            labelText: 'Address',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          FormInputField(
                            labelText: 'Middle Name',
                          ),
                          FormInputField(
                            labelText: 'Contact No.',
                          ),
                          FormInputField(
                            labelText: 'Email',
                          ),
                          FormInputField(
                            labelText: 'Town',
                          ),
                          FormInputField(
                            labelText: 'State',
                          ),
                          FormInputField(
                            labelText: 'Pincode',
                          ),
                          FormInputField(
                            labelText: 'Description',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                FormSubHeading(
                  text: 'Personal Account Details',
                  size: 16,
                  weight: FontWeight.w600,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FormInputField(
                              labelText: 'Gang ID Type',
                            )
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FormInputField(
                              labelText: 'ID Name',
                            )
                          ],
                        )),
                  ],
                ),
                FormSubHeading(
                  text: 'Other Details',
                  size: 16,
                  weight: FontWeight.w600,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FormInputField(
                              labelText: 'Vehicle Details',
                            ),
                            FormInputField(
                              labelText: 'Driver Name',
                            ),
                            FormInputField(
                              labelText: 'Reg No.',
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FormInputField(
                              labelText: 'Vehicle Name',
                            ),
                            FormInputField(
                              labelText: 'Contact No.',
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          FormButton(
                            press: () {
                              if (_gangformKey.currentState.validate()) {
                                Scaffold.of(context).showBottomSheet(
                                    (context) => Text('Form Submitted'));
                              }
                            },
                            text: 'Submit',
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [SizedBox(width: 100)],
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          FormButton(
                            press: () {},
                            text: 'Clear',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
