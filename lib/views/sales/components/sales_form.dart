import 'package:flutter/material.dart';
import 'package:traders_billing/components/buttons.dart';
import 'package:traders_billing/components/form_input_field.dart';
import 'package:traders_billing/services/searchable_text.dart';
import 'package:traders_billing/views/sales/components/sales_table.dart';
//import 'package:traders_billing/views/arrivals/components/arrivals_table.dart';

class SalesForm extends StatefulWidget {
  SalesForm({Key key}) : super(key: key);

  @override
  _SalesFormState createState() => _SalesFormState();
}

class _SalesFormState extends State<SalesForm> {
  final _salesFormKey = GlobalKey<FormState>();

  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();
  final TextEditingController myController3 = TextEditingController();
  final TextEditingController myController4 = TextEditingController();
  final TextEditingController myController5 = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController1.dispose();
    myController2.dispose();
    myController3.dispose();
    myController4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _salesFormKey,
          child: SizedBox(
            //width: 1500,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        //flex: 1,
                        child: Column(
                      children: [
                        FormSearchableField(
                          labelText: 'Buyer ID',
                          mycontroller: myController1,
                          returnFunction: fetchBuyerID(),
                        ),
                        FormSearchableField(
                          labelText: 'Buyer Name',
                          mycontroller: myController2,
                          returnFunction: fetchBuyerName(),
                        ),
                        FormInputField(
                          labelText: 'Address',
                        ),
                        FormInputField(
                          labelText: 'ID Proof',
                        ),
                        FormInputField(
                          labelText: 'Loader Gang ID',
                        ),
                      ],
                    )),
                    Expanded(
                        //flex: 2,
                        child: Column(
                      children: [
                        FormSearchableField(
                          labelText: 'Contact',
                          mycontroller: myController3,
                          returnFunction: fetchBuyerContact(),
                        ),
                        FormInputField(
                          labelText: 'Town',
                        ),
                        FormInputField(
                          labelText: 'City',
                        ),
                        FormInputField(
                          labelText: 'State',
                        ),
                        FormInputField(
                          labelText: 'Loader Name',
                        )
                      ],
                    ))
                  ],
                ),
                SizedBox(height: 20),
                SalesTable(),
                SizedBox(height: 50),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          FormButton(
                            press: () {
                              if (_salesFormKey.currentState.validate()) {
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
