import 'package:flutter/material.dart';

class ArrivalsTable extends StatefulWidget {
  ArrivalsTable({Key key}) : super(key: key);

  @override
  _ArrivalsTableState createState() => _ArrivalsTableState();
}

class _ArrivalsTableState extends State<ArrivalsTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          DataTable(columns: [
            DataColumn(label: Text("Entry ID")),
            DataColumn(label: Text("Fruit ID")),
            DataColumn(label: Text("Fruit Type")),
            DataColumn(label: Text("Quantity (in Kgs)")),
            DataColumn(label: Text("Rate")),
            DataColumn(label: Text("Quantity x Rate")),
          ], rows: [
            DataRow(cells: [
              DataCell(Text("123")),
              DataCell(Text("456")),
              DataCell(Text("Mango")),
              DataCell(Text("45")),
              DataCell(Text("123")),
              DataCell(Text("1000")),
            ]),
            DataRow(cells: [
              DataCell(Text("12345")),
              DataCell(Text("456789")),
              DataCell(Text("Apple")),
              DataCell(Text("455")),
              DataCell(Text("123")),
              DataCell(Text("8000")),
            ]),
            DataRow(cells: [
              DataCell(Text("123")),
              DataCell(Text("456")),
              DataCell(Text("Pineapple")),
              DataCell(Text("452")),
              DataCell(Text("123")),
              DataCell(Text("9000")),
            ])
          ])
        ],
      ),
    );
  }
}
