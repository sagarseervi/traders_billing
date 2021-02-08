import 'package:flutter/material.dart';
import 'package:traders_billing/components/table_field_search.dart';
import 'package:traders_billing/components/text_field_search.dart';
import 'package:traders_billing/components/text_styles.dart';
import 'package:traders_billing/constants.dart';

class FormInputField extends StatelessWidget {
  final String labelText;
  const FormInputField({Key key, this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          FormTextStyle(
            text: labelText,
            size: 16,
            color: kprimaryBlack,
            weight: FontWeight.w400,
          ),
          SizedBox(width: 50),
          Flexible(
              child: TextFormField(
            //controller: myController,
            style: TextStyle(height: 2),
            decoration: InputDecoration(
              contentPadding:
                  new EdgeInsets.symmetric(vertical: 0, horizontal: 2),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kprimaryGrey)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kprimaryGrey)),
              fillColor: kBgGrey,
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ))
        ],
      ),
    );
  }
}

class FormSearchableField extends StatelessWidget {
  final String labelText;
  final TextEditingController mycontroller;
  final Future returnFunction;
  const FormSearchableField({
    Key key,
    this.labelText,
    this.mycontroller,
    this.returnFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          FormTextStyle(
            text: labelText,
            size: 16,
            color: kprimaryBlack,
            weight: FontWeight.w400,
          ),
          SizedBox(width: 50),
          Flexible(
              child: TextFieldSearch(
                  label: '',
                  controller: mycontroller,
                  future: () {
                    return returnFunction;
                  }))
        ],
      ),
    );
  }
}

class FormSearchTableField extends StatelessWidget {
  final String labelText;
  final TextEditingController mycontroller;
  final Future returnFunction;
  const FormSearchTableField({
    Key key,
    this.labelText,
    this.mycontroller,
    this.returnFunction,
    Future<List> newMethod,
    TextEditingController controller,
    Future<List> Function() future,
    String label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: TableFieldSearch(
            label: '',
            controller: mycontroller,
            future: () {
              return returnFunction;
            }));
  }
}

class TableInputField extends StatelessWidget {
  final String labelText;
  const TableInputField({Key key, this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Flexible(
            child: TextFormField(
          style: TextStyle(height: 2),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        )));
  }
}
