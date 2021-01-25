import 'package:flutter/material.dart';
import 'package:traders_billing/routing/route_names.dart';
import 'package:traders_billing/widgets/navigation_bar/top_navbar_item.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Row(
        children: <Widget>[
          Text("Search"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TopNavbarItem('Profile', UserProfileRoute),
              TopNavbarItem('Settings', SettingRoute),
              TopNavbarItem('Logout', LogoutRoute)
            ],
          )
        ],
      ),
    );
  }
}
