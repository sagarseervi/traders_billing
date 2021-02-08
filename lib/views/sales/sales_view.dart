import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';
import 'package:traders_billing/constants.dart';
import 'package:traders_billing/views/sales/components/sales_form.dart';

class SaleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          height: 1200,
          //height: MediaQuery.of(context).size.height,
          width: 1500,
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              SizedBox(height: 20),
              PageHeader(
                text: 'Sales',
                color: kprimaryBlack,
                weight: FontWeight.w700,
                size: 20,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(width: 800, child: SalesForm()),
            ],
          ),
        )
      ],
    );
  }
}
