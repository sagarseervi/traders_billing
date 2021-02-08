import 'package:flutter/material.dart';
import 'package:traders_billing/views/search_bills/components/sb_buyer_table.dart';
import 'package:traders_billing/views/search_bills/components/search_bills_nav.dart';

class SearchBillsBuyerView extends StatelessWidget {
  //const SearchBillsBuyerView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          color: Colors.white,
          height: 600,
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: SearchBillsNav(),
              ),
              SizedBox(
                height: 40,
              ),
              SBBuyerTable(),
            ],
          ),
        )
      ],
    );
  }
}
