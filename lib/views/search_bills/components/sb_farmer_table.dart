import 'package:flutter/material.dart';
import 'package:traders_billing/components/text_styles.dart';

class SbFarmerTable extends StatefulWidget {
  @override
  _SbFarmerTableState createState() => _SbFarmerTableState();
}

class _SbFarmerTableState extends State<SbFarmerTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(children: [
                  TableCell(child: SBPageHeader(text: 'Farmer Bill ID')),
                  TableCell(child: SBPageHeader(text: 'Name')),
                  TableCell(child: SBPageHeader(text: 'Contact')),
                  TableCell(child: SBPageHeader(text: 'Date and Time')),
                  TableCell(child: SBPageHeader(text: 'Amount')),
                  TableCell(child: SBPageHeader(text: '')),
                  TableCell(child: SBPageHeader(text: '')),
                  TableCell(child: SBPageHeader(text: '')),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10001')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: true)),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10002')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: true)),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10003')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: true)),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10004')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: true)),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10005')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: true)),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10006')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: true)),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10007')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: false)),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10008')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: true)),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10009')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: true)),
                ]),
                TableRow(children: [
                  TableCell(child: SBTableRow(text: '10010')),
                  TableCell(child: SBTableRow(text: 'Ramesh Kumar')),
                  TableCell(child: SBTableRow(text: '9414852369')),
                  TableCell(child: SBTableRow(text: '01/02/2020 10:48AM')),
                  TableCell(child: SBTableRow(text: '10,02,524')),
                  TableCell(child: ProfileTableActions(text: 'View')),
                  TableCell(child: ProfileTableActions(text: 'Edit')),
                  TableCell(child: ActiveToggle(active: false)),
                ]),
              ],
            )
          ],
        ));
  }
}
