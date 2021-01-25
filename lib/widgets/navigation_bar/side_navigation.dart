import 'package:flutter/material.dart';

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.2,
      child: Row(
        children: <Widget>[
          SizedBox(width: size.width * 0.05),
          Column(
            children: <Widget>[
              SideNavbarItem('Traders Billing'),
              SideNavbarItem('Dashboard'),
              SideNavbarItem('Arrivals'),
              SideNavbarItem('Sales'),
              SideNavbarItem('Search Bills'),
              SideNavbarItem('Profile'),
              SideNavbarItem('Payments'),
              SideNavbarItem('Ledger'),
              SideNavbarItem('Pesticide Distribution')
            ],
          )
        ],
      ),
    );
  }
}

class SideNavbarItem extends StatelessWidget {
  final String title;
  const SideNavbarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20),
    );
  }
}
