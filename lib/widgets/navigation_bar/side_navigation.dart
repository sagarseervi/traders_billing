import 'package:flutter/material.dart';

class SideNavigationBar extends StatelessWidget {
  const SideNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topLeft,
      width: size.width * 0.2,
      child: Row(
        children: <Widget>[
          SizedBox(width: size.width * 0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SideNavbarItem('Dashboard'),
              SizedBox(height: size.height * 0.02),
              SideNavbarItem('Arrivals'),
              SizedBox(height: size.height * 0.02),
              SideNavbarItem('Sales'),
              SizedBox(height: size.height * 0.02),
              SideNavbarItem('Search Bills'),
              SizedBox(height: size.height * 0.02),
              SideNavbarItem('Profile'),
              SizedBox(height: size.height * 0.02),
              SideNavbarItem('Payments'),
              SizedBox(height: size.height * 0.02),
              SideNavbarItem('Ledger'),
              SizedBox(height: size.height * 0.02),
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
