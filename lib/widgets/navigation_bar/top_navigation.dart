import 'package:flutter/material.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/widgets/navigation_bar/top_navbar_item.dart';

class TopNavigationBar extends StatelessWidget {
  //const TopNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(width: 20),
            TopNavbarItem('Profile', ProfileRoute),
            SizedBox(width: 20),
            TopNavbarItem('Settings', SettingRoute),
            SizedBox(width: 20),
            TopNavbarItem('Logout', LogoutRoute),
            SizedBox(width: 50),
          ],
        ));
  }
}
