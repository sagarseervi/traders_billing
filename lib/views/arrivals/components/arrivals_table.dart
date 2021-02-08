import 'package:flutter/material.dart';
import 'package:traders_billing/components/form_input_field.dart';
import 'package:traders_billing/components/text_styles.dart';
import 'package:traders_billing/services/searchable_text.dart';

class ArrivalsTable extends StatefulWidget {
  ArrivalsTable({Key key}) : super(key: key);

  @override
  _ArrivalsTableState createState() => _ArrivalsTableState();
}

class _ArrivalsTableState extends State<ArrivalsTable> {
  final TextEditingController myController1 = TextEditingController();
  final TextEditingController myController2 = TextEditingController();
  final TextEditingController myController3 = TextEditingController();
  final TextEditingController myController4 = TextEditingController();
  final TextEditingController myController5 = TextEditingController();
  final TextEditingController myController6 = TextEditingController();
  final TextEditingController myController7 = TextEditingController();
  final TextEditingController myController8 = TextEditingController();
  final TextEditingController myController9 = TextEditingController();
  final TextEditingController myController10 = TextEditingController();

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
    myController5.dispose();
    myController6.dispose();
    myController7.dispose();
    myController8.dispose();
    myController9.dispose();
    myController10.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                TableCell(child: SalesPageHeader(text: 'Entity ID')),
                TableCell(child: SalesPageHeader(text: 'Fruit ID')),
                TableCell(child: SalesPageHeader(text: 'Fruit Type')),
                TableCell(child: SalesPageHeader(text: 'Quantity')),
                TableCell(child: SalesPageHeader(text: 'Rate')),
                TableCell(child: SalesPageHeader(text: 'Quantity x Rate')),
              ]),
              TableRow(children: [
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController1,
                    future: () {
                      return fetchEntryID();
                    },
                  ),
                ),
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController2,
                    future: () {
                      return fetchFruitID();
                    },
                  ),
                ),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
              ]),
              TableRow(children: [
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController3,
                    future: () {
                      return fetchEntryID();
                    },
                  ),
                ),
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController4,
                    future: () {
                      return fetchFruitID();
                    },
                  ),
                ),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
              ]),
              TableRow(children: [
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController5,
                    future: () {
                      return fetchEntryID();
                    },
                  ),
                ),
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController6,
                    future: () {
                      return fetchFruitID();
                    },
                  ),
                ),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
              ]),
              TableRow(children: [
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController7,
                    future: () {
                      return fetchEntryID();
                    },
                  ),
                ),
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController8,
                    future: () {
                      return fetchFruitID();
                    },
                  ),
                ),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
              ]),
              TableRow(children: [
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController9,
                    future: () {
                      return fetchEntryID();
                    },
                  ),
                ),
                TableCell(
                  child: FormSearchTableField(
                    mycontroller: myController10,
                    future: () {
                      return fetchFruitID();
                    },
                  ),
                ),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
                TableCell(child: TableInputField()),
              ])
            ],
          )
        ],
      ),
    );
  }
}
