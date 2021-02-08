import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/views/ledger/components/ledger_form.dart';
import 'package:traders_billing/views/ledger/components/ledger_table.dart';

class LedgerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          height: 1200,
          width: 1000,
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              SizedBox(height: 20),
              PageHeader(
                text: 'Ledger',
                color: kprimaryBlack,
                weight: FontWeight.w700,
                size: 20,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(width: 1000, child: LedgerForm()),
              SizedBox(
                height: 40,
              ),
              const Divider(
                color: Colors.grey,
                height: 10,
                thickness: 3,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(
                height: 40,
              ),
              LedgerTable(),
            ],
          ),
        )
      ],
    );
  }
}
