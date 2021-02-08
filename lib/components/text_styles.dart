import 'package:flutter/material.dart';
import 'package:traders_billing/constants.dart';

class FormTextStyle extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final String fontFamily;
  final FontWeight weight;
  const FormTextStyle(
      {Key key, this.text, this.color, this.size, this.fontFamily, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Segoe-UI',
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final String fontFamily;
  final FontWeight weight;
  const PageHeader(
      {Key key, this.text, this.color, this.size, this.fontFamily, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Segoe-UI',
                fontSize: size,
                fontWeight: weight,
                color: color,
              ),
            ),
          ],
        ));
  }
}

class FormSubHeading extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final String fontFamily;
  final FontWeight weight;
  const FormSubHeading(
      {Key key, this.text, this.color, this.size, this.fontFamily, this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //alignment: Alignment.topLeft,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Segoe-UI',
                fontSize: size,
                fontWeight: weight,
                color: color,
              ),
            ),
          ],
        ));
  }
}

class NavText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;

  // name constructor that has a positional parameters with the text required
  // and the other parameters optional
  NavText({@required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16,
          color: color ?? Colors.black,
          fontWeight: weight ?? FontWeight.normal),
    );
  }
}

class ProfileTableHeaders extends StatelessWidget {
  final String text;
  const ProfileTableHeaders({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, color: kprimaryGrey, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class ProfileTableRow extends StatelessWidget {
  final String text;
  const ProfileTableRow({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: kprimaryGrey,
          width: 1,
        ))),
        child: Text(text,
            style: TextStyle(
                fontSize: 16,
                color: kprimaryBlack,
                fontWeight: FontWeight.normal)));
  }
}

class ProfileTableActions extends StatelessWidget {
  final String text;
  final Function press;
  const ProfileTableActions({Key key, this.text, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: kprimaryGrey,
          width: 1,
        ))),
        child: FlatButton(
          padding: EdgeInsets.all(0.0),
          onPressed: () {},
          child: Text(text,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.normal)),
        ));
  }
}

class SalesPageHeader extends StatelessWidget {
  final String text;
  const SalesPageHeader({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      color: kBgGrey,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, color: kprimaryBlack, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class SBPageHeader extends StatelessWidget {
  final String text;
  const SBPageHeader({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      color: kdarkYellow,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, color: kprimaryBlack, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class SBTableRow extends StatelessWidget {
  final String text;
  const SBTableRow({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        child: Text(text,
            style: TextStyle(
                fontSize: 16,
                color: kprimaryBlack,
                fontWeight: FontWeight.normal)));
  }
}

class ActiveToggle extends StatelessWidget {
  final bool active;
  const ActiveToggle({Key key, this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (active == true) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        child: Text(
          "Active",
          style: TextStyle(
              fontSize: 16, color: Colors.green, fontWeight: FontWeight.w600),
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        child: Text(
          "Inactive",
          style: TextStyle(
              fontSize: 16, color: Colors.red, fontWeight: FontWeight.w600),
        ),
      );
    }
  }
}

class LedgerTableHeaders extends StatelessWidget {
  final String text;
  const LedgerTableHeaders({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      color: kdarkYellow,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 16, color: kprimaryBlack, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class LegderTableRow extends StatelessWidget {
  final String text;
  const LegderTableRow({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: kprimaryGrey,
          width: 1,
        ))),
        child: Text(text,
            style: TextStyle(
                fontSize: 16,
                color: kprimaryBlack,
                fontWeight: FontWeight.normal)));
  }
}
