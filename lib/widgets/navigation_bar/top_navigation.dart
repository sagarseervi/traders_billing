import 'package:flutter/material.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          Text("Trader Billing"),
          Row(
            children: <Widget>[
              TopNavbarItem('Profile'),
              TopNavbarItem('Settings'),
              TopNavbarItem('Logout')
            ],
          )
        ],
      ),
    );
  }
}

class TopNavbarItem extends StatelessWidget {
  final String title;
  const TopNavbarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 16),
    );
  }
}
