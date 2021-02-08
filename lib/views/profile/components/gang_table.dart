import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';

class GangTable extends StatefulWidget {
  GangTable({Key key}) : super(key: key);

  @override
  _GangTableState createState() => _GangTableState();
}

class _GangTableState extends State<GangTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Table(
            children: [
              TableRow(children: [
                TableCell(child: ProfileTableHeaders(text: 'Gang ID')),
                TableCell(child: ProfileTableHeaders(text: 'Gang Name')),
                TableCell(child: ProfileTableHeaders(text: 'Contact')),
                TableCell(child: ProfileTableHeaders(text: 'Village')),
                TableCell(child: ProfileTableHeaders(text: 'Town')),
                TableCell(child: ProfileTableHeaders(text: 'Status')),
                TableCell(child: ProfileTableHeaders(text: 'Verification')),
                TableCell(child: ProfileTableHeaders(text: 'Date Created')),
                TableCell(child: ProfileTableHeaders(text: 'Date Modified')),
                TableCell(child: Text('')),
                TableCell(child: Text('')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10001')),
                TableCell(child: ProfileTableRow(text: 'Shreyash Sharma')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10002')),
                TableCell(child: ProfileTableRow(text: 'Suman Tuman')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10003')),
                TableCell(child: ProfileTableRow(text: 'Jagdish Solanki')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10004')),
                TableCell(child: ProfileTableRow(text: 'Shona Mona')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10001')),
                TableCell(child: ProfileTableRow(text: 'Ravindra Chavan')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10001')),
                TableCell(child: ProfileTableRow(text: 'Ravindra Chavan')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10001')),
                TableCell(child: ProfileTableRow(text: 'Ravindra Chavan')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10001')),
                TableCell(child: ProfileTableRow(text: 'Ravindra Chavan')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10001')),
                TableCell(child: ProfileTableRow(text: 'Ravindra Chavan')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
              TableRow(children: [
                TableCell(child: ProfileTableRow(text: '10001')),
                TableCell(child: ProfileTableRow(text: 'Ravindra Chavan')),
                TableCell(child: ProfileTableRow(text: '9414985236')),
                TableCell(child: ProfileTableRow(text: 'Adoni')),
                TableCell(child: ProfileTableRow(text: 'Bebas')),
                TableCell(child: ProfileTableRow(text: 'Active')),
                TableCell(child: ProfileTableRow(text: 'Completed')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableRow(text: '01/02/2021')),
                TableCell(child: ProfileTableActions(text: 'View')),
                TableCell(child: ProfileTableActions(text: 'Edit')),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
