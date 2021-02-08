import 'package:flutter/material.dart';
import 'package:traders_billing/components/buttons.dart';
import 'package:traders_billing/components/form_input_field.dart';
import 'package:traders_billing/components/text_styles.dart';

class PaymentsCreditForm extends StatefulWidget {
  PaymentsCreditForm({Key key}) : super(key: key);

  @override
  _PaymentsCreditFormState createState() => _PaymentsCreditFormState();
}

class _PaymentsCreditFormState extends State<PaymentsCreditForm> {
  final _creditFormKey = GlobalKey<FormState>();
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
          key: _creditFormKey,
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
                            labelText: 'ID',
                          ),
                          FormInputField(
                            labelText: 'Contact No.',
                          ),
                          FormInputField(
                            labelText: 'Village',
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
                            labelText: 'Name',
                          ),
                          FormInputField(
                            labelText: 'City',
                          ),
                          FormInputField(
                            labelText: 'Pincode',
                          ),
                          FormInputField(
                            labelText: 'Paid Amount',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                FormSubHeading(
                  text: 'Transaction Details',
                  size: 16,
                  weight: FontWeight.w600,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        FormInputField(
                          labelText: 'Date',
                        ),
                        FormInputField(
                          labelText: 'Sum of Ruppess',
                        ),
                        FormInputField(
                          labelText: 'In Words',
                        ),
                        FormInputField(
                          labelText: 'Paid to',
                        ),
                        FormInputField(
                          labelText: 'On Account of',
                        ),
                        FormInputField(
                          labelText: 'Prepared By',
                        ),
                        FormInputField(
                          labelText: 'Received By',
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
                              if (_creditFormKey.currentState.validate()) {
                                Scaffold.of(context).showBottomSheet(
                                    (context) => Text('Form Submitted'));
                              }
                            },
                            text: 'Save',
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
