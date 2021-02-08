import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';

class LedgerTable extends StatefulWidget {
  LedgerTable({Key key}) : super(key: key);

  @override
  _LedgerTableState createState() => _LedgerTableState();
}

class _LedgerTableState extends State<LedgerTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Table(
            children: [
              TableRow(children: [
                TableCell(child: LedgerTableHeaders(text: 'Transaction ID')),
                TableCell(child: LedgerTableHeaders(text: 'Description')),
                TableCell(child: LedgerTableHeaders(text: 'Date')),
                TableCell(child: LedgerTableHeaders(text: 'Debit')),
                TableCell(child: LedgerTableHeaders(text: 'Credit')),
                TableCell(child: LedgerTableHeaders(text: 'Balance')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100001')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100002')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100003')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100004')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100005')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100006')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100007')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100008')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100009')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
              TableRow(children: [
                TableCell(child: LegderTableRow(text: '100010')),
                TableCell(child: LegderTableRow(text: 'Suman debited Rs 1000')),
                TableCell(child: LegderTableRow(text: '01/02/2021')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
                TableCell(child: LegderTableRow(text: '10,000')),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
