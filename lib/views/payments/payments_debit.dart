import 'package:flutter/material.dart';
import 'package:traders_billing/views/payments/components/payments_credit_form.dart';
import 'package:traders_billing/views/payments/components/payments_debit_form.dart';
import 'package:traders_billing/views/payments/components/payments_navigation.dart';

class PaymentsDebitView extends StatelessWidget {
  const PaymentsDebitView({Key key}) : super(key: key);

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
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: PaymentsNavigation(),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(width: 800, child: PaymentsDebitForm()),
            ],
          ),
        )
      ],
    );
  }
}
