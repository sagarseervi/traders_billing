import 'package:flutter/material.dart';
import 'package:traders_billing/components/form_input_field.dart';
import 'package:traders_billing/services/searchable_text.dart';

class LedgerForm extends StatefulWidget {
  LedgerForm({Key key}) : super(key: key);

  @override
  _LedgerFormState createState() => _LedgerFormState();
}

class _LedgerFormState extends State<LedgerForm> {
  final _ledgerFormKey = GlobalKey<FormState>();

  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();
  final TextEditingController myController3 = TextEditingController();

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: _ledgerFormKey,
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
                            FormSearchableField(
                              labelText: 'Farmer ID',
                              mycontroller: myController1,
                              returnFunction: fetchLedgerFID(),
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FormSearchableField(
                              labelText: 'Farmer Name',
                              mycontroller: myController2,
                              returnFunction: fetchLedgerFName(),
                            ),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            FormSearchableField(
                              labelText: 'Contact',
                              mycontroller: myController3,
                              returnFunction: fetchLedgerFContact(),
                            ),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
